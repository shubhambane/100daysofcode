import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyMoneyManagement extends StatelessWidget {
  MyMoneyManagement({
    super.key,
  });

  final dataMap = <String, double>{
    "100": 6,
    "days": 4,
    "code": 2,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PieChart(
            chartRadius: 50,
            chartValuesOptions: const ChartValuesOptions(
              showChartValueBackground: false,
              showChartValues: false,
              showChartValuesInPercentage: false,
              showChartValuesOutside: false,
            ),
            legendOptions: const LegendOptions(
              showLegends: false,
            ),
            dataMap: dataMap,
            colorList: const [
              Color(0xFFA2D576),
              Color(0xFF205865),
              Color(0xFFDEFC66),
            ],
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: RichText(
                softWrap: true,
                overflow: TextOverflow.visible,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Join #100daysofcode with Shubham Bane\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          'Follow along the journey of 100 days of code on LinkedIn and Github.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey.shade400,
          )
        ],
      ),
    );
  }
}
