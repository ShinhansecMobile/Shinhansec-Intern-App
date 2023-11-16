import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class KOSDAQChart extends StatelessWidget {
  final List<ChartData> data = <ChartData>[
    ChartData('2023/08/01',909.76),
    ChartData('2023/08/02',920.32),
    ChartData('2023/08/03',918.43),
    ChartData('2023/08/04',898.22),
    ChartData('2023/08/07',892.34),
    ChartData('2023/08/08',908.98),
    ChartData('2023/08/09',911.29),
    ChartData('2023/08/10',912.20),
    ChartData('2023/08/11',901.68),
    ChartData('2023/08/14',878.29),
    ChartData('2023/08/16',886.04),
    ChartData('2023/08/17',877.32),
    ChartData('2023/08/18',888.71),
    ChartData('2023/08/21',888.71),
    ChartData('2023/08/22',893.33),
    ChartData('2023/08/24',901.74),
    ChartData('2023/08/25',899.38),
    ChartData('2023/08/28',909.38),
    ChartData('2023/08/29',916.24),
    ChartData('2023/08/30',923.81),
    ChartData('2023/08/31',928.40),
    ChartData('2023/09/01',919.74),
    ChartData('2023/09/04',919.16),
    ChartData('2023/09/05',921.48),
    ChartData('2023/09/06',917.95),
    ChartData('2023/09/07',906.36),
    ChartData('2023/09/08',914.18),
    ChartData('2023/09/11',912.55),
    ChartData('2023/09/12',898.04),
    ChartData('2023/09/13',882.72),
    ChartData('2023/09/14',899.47),
    ChartData('2023/09/15',899.03),
    ChartData('2023/09/18',891.29),
    ChartData('2023/09/20',883.89),
    ChartData('2023/09/19',882.72),
    ChartData('2023/09/21',860.68),
    ChartData('2023/09/22',857.35),
    ChartData('2023/09/25',839.17),
    ChartData('2023/09/26',827.82),
    ChartData('2023/09/27',841.02),
    ChartData('2023/10/04',807.40),
    ChartData('2023/10/05',801.02),
    ChartData('2023/10/06',816.39),
    ChartData('2023/10/10',795.00),
    ChartData('2023/10/11',817.12),
    ChartData('2023/10/12',835.49),
    ChartData('2023/10/13',822.78),
    ChartData('2023/10/16',810.54),
    ChartData('2023/10/17',820.38),
    ChartData('2023/10/18',808.89),
    ChartData('2023/10/19',784.04),
    ChartData('2023/10/20',769.25),
    ChartData('2023/10/23',763.69),
    ChartData('2023/10/24',784.86),
    ChartData('2023/10/25',770.84),
    ChartData('2023/10/26',743.85),
    ChartData('2023/10/27',748.49),
    ChartData('2023/10/30',757.12),
    ChartData('2023/10/31',736.10),
    ChartData('2023/11/01',739.23),
    ChartData('2023/11/02',772.84),
    ChartData('2023/11/03',782.05),
    ChartData('2023/11/06', 839.45),
    ChartData('2023/11/07', 823.47),
    ChartData('2023/11/08', 811.02),
    ChartData('2023/11/09', 802.87),
    ChartData('2023/11/10', 789.31),
    ChartData('2023/11/13', 774.42),
    ChartData('2023/11/14', 794.19),
    ChartData('2023/11/15', 809.36),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          minX: 0,
          maxX: data.length.toDouble() - 1,
          minY: 600,
          maxY: 1000, // 최대 Y 값에 맞게 조절
          lineBarsData: [
            LineChartBarData(
              spots: List.generate(
                data.length,
                    (index) => FlSpot(index.toDouble(), data[index].price),
              ),
              isCurved: true,
              colors: [const Color(0xFF8863E4)],
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
            ),
          ],
          borderData: FlBorderData(show: false),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.date, this.price);

  final String date;
  final double price;
}
