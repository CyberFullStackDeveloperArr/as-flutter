import 'package:flutter/material.dart';
import 'flutter_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double sliderValue = 50; //slider #
    final TextEditingController alamatC = TextEditingController(); // input #
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello World Imut",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 0, 55, 255),
                    backgroundColor: Color.fromARGB(255, 255, 0, 0),
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4.0,
                    fontFamily: 'Serif',
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Button",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 100),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/tupai.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                StatefulBuilder(
                  builder: (context, setStateSB) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nilai Slider: ${sliderValue.toInt()}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        Slider(
                            value: sliderValue,
                            min: 0,
                            max: 100,
                            divisions: 100,
                            label: sliderValue.toStringAsFixed(0),
                            onChanged: (value) {
                              setStateSB(() {
                                sliderValue = value;
                              });
                            }),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    labelText: "Nama Kamu",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: alamatC,
                  decoration: const InputDecoration(
                    labelText: "Alamat Kamu",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    print(alamatC.text);
                    alamatC.text = "yanto";
                  },
                  child: const Text("Print Alamat"),
                ),
                const SizedBox(height: 20),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    // border: UnderlineInputBorder(),
                    border: InputBorder.none,
                  ),
                ),
                Builder(
                  builder: (context) {
                    return ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const FlutterAnimationPage()),
                        );
                      },
                      child: const Text("Go To Animation Page"),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
