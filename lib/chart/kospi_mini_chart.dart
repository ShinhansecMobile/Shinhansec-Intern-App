import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:h_stock/models/stock_data.dart';


class KOSPIChart extends StatelessWidget {
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
          maxX: kospiChartData.length.toDouble() - 1,
          minY: 2200,
          maxY: 2700,
          lineBarsData: [
            LineChartBarData(
              spots: List.generate(
                kospiChartData.length,
                    (index) => FlSpot(index.toDouble(), kospiChartData[index].price),
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
