import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FlutterChartPage extends StatelessWidget {
  const FlutterChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: 300,
                  height: 300,
                  child: PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(
                          value: 40,
                          color: Colors.blue.shade400,
                          title: '40%',
                          titleStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        PieChartSectionData(
                          value: 10,
                          color: Colors.red.shade500,
                          title: '10%',
                          titleStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 300,
                  child: RadarChart(
                    RadarChartData(
                      radarShape: RadarShape.polygon,
                      dataSets: [
                        RadarDataSet(
                          dataEntries: const [
                            RadarEntry(value: 3),
                            RadarEntry(value: 4),
                            RadarEntry(value: 2),
                            RadarEntry(value: 5),
                            RadarEntry(value: 3),
                          ],
                          borderColor: Colors.green,
                          fillColor: Colors.transparent,
                          entryRadius: 0,
                        ),
                      ],
                      tickCount: 5,
                      ticksTextStyle:
                          const TextStyle(color: Colors.red, fontSize: 20),
                      tickBorderData: const BorderSide(color: Colors.blue),
                      gridBorderData: const BorderSide(
                          color: Color.fromARGB(255, 255, 0, 187)),
                      radarBackgroundColor: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
