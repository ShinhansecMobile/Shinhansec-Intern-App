import 'package:flutter/material.dart';
import 'package:h_stock/chart/kospi_mini_chart.dart';
import 'package:h_stock/chart/kosdaq_mini_chart.dart';


class KospiModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('코스피 차트'),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  '코스피 차트',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: KOSPIChart(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class KosdaqModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('코스닥 차트'),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '코스닥 차트',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: KOSDAQChart(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
