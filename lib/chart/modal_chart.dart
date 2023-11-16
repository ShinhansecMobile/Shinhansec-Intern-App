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
          //color: Colors.yellow, // 전체 컨테이너에 노란색 배경 적용
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // margin: EdgeInsets.fromLTRB(50, 20, 0, 0),
                //color: Colors.red, // 텍스트 컨테이너에 빨간색 배경 적용
                padding: const EdgeInsets.all(10),
                child: Text(
                  '코스피 차트',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              //SizedBox(width: 10), // 빨간색 박스와 파란색 박스 사이에 간격을 줄 수 있습니다.
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
            //crossAxisAlignment: CrossAxisAlignment.start,
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
