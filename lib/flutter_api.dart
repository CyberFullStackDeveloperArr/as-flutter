import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:ui';

class FlutterApiPage extends StatefulWidget {
  const FlutterApiPage({super.key});
  @override
  State<FlutterApiPage> createState() => _FlutterApiPageState();
}

class _FlutterApiPageState extends State<FlutterApiPage> {
  Map<String, dynamic>? user;
  Future<void> getData() async {
    final res = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users/2'),
    );
    if (res.statusCode == 200) {
      setState(() {
        user = jsonDecode(res.body);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 8, 17, 21),
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: user == null
                ? const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: CircularProgressIndicator(),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 20,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user!['name'],
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                user!['email'],
                                style: const TextStyle(color: Colors.white70),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                user!['phone'],
                                style: const TextStyle(color: Colors.white70),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                user!['website'],
                                style: const TextStyle(color: Colors.white70),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
