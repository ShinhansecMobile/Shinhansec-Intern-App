import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class KOSPIChart extends StatelessWidget {
  final List<ChartData> data = <ChartData>[
    ChartData('2023/08/01', 2667.07),
    ChartData('2023/08/02', 2616.47),
    ChartData('2023/08/03', 2605.39),
    ChartData('2023/08/04', 2602.80),
    ChartData('2023/08/07', 2580.71),
    ChartData('2023/08/08', 2573.98),
    ChartData('2023/08/09', 2605.12),
    ChartData('2023/08/10', 2601.56),
    ChartData('2023/08/11', 2591.26),
    ChartData('2023/08/14', 2570.87),
    ChartData('2023/08/16', 2525.64),
    ChartData('2023/08/17', 2519.85),
    ChartData('2023/08/18', 2504.50),
    ChartData('2023/08/22', 2515.74),
    ChartData('2023/08/25', 2519.14),
    ChartData('2023/08/24', 2537.68),
    ChartData('2023/08/25', 2519.14),
    ChartData('2023/08/28', 2543.41),
    ChartData('2023/08/29', 2552.16),
    ChartData('2023/08/30', 2561.22),
    ChartData('2023/08/31', 2556.27),
    ChartData('2023/09/01', 2563.71),
    ChartData('2023/09/04', 2584.55),
    ChartData('2023/09/05', 2582.18),
    ChartData('2023/09/06', 2563.34),
    ChartData('2023/09/07', 2548.26),
    ChartData('2023/09/08', 2547.68),
    ChartData('2023/09/11', 2556.88),
    ChartData('2023/09/12', 2536.58),
    ChartData('2023/09/13', 2534.70),
    ChartData('2023/09/14', 2572.89),
    ChartData('2023/09/15', 2601.28),
    ChartData('2023/09/18', 2574.72),
    ChartData('2023/09/20', 2559.74),
    ChartData('2023/09/19', 2559.21),
    ChartData('2023/09/21', 2514.97),
    ChartData('2023/09/22', 2508.13),
    ChartData('2023/09/25', 2495.76),
    ChartData('2023/09/26', 2462.97),
    ChartData('2023/09/27', 2465.07),
    ChartData('2023/10/04', 2405.69),
    ChartData('2023/10/05', 2403.60),
    ChartData('2023/10/06', 2408.73),
    ChartData('2023/10/10', 2402.58),
    ChartData('2023/10/11', 2450.08),
    ChartData('2023/10/12', 2479.82),
    ChartData('2023/10/13', 2456.15),
    ChartData('2023/10/16', 2436.24),
    ChartData('2023/10/17', 2460.17),
    ChartData('2023/10/18', 2462.60),
    ChartData('2023/10/19', 2415.80),
    ChartData('2023/10/20', 2375.00),
    ChartData('2023/10/23', 2357.02),
    ChartData('2023/10/24', 2383.51),
    ChartData('2023/10/25', 2363.17),
    ChartData('2023/10/26', 2299.08),
    ChartData('2023/10/27', 2302.81),
    ChartData('2023/10/30', 2310.55),
    ChartData('2023/10/31', 2277.99),
    ChartData('2023/11/01', 2301.56),
    ChartData('2023/11/02', 2343.12),
    ChartData('2023/11/03', 2368.34),
    ChartData('2023/11/06', 2502.32),
    ChartData('2023/11/07', 2443.96),
    ChartData('2023/11/08', 2421.61),
    ChartData('2023/11/09', 2427.08),
    ChartData('2023/11/10', 2409.66),
    ChartData('2023/11/13', 2403.73),
    ChartData('2023/11/14', 2433.25),
    ChartData('2023/11/15', 2486.67),
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
          minY: 2200,
          maxY: 2700,
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
