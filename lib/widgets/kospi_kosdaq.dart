import 'package:flutter/material.dart';
import 'package:h_stock/chart/kosdaq_mini_chart.dart';
import 'package:h_stock/chart/kospi_mini_chart.dart';


class KospiWidget extends StatelessWidget {
  const KospiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        // onTap: () {
        //   Navigator.push(
        //       context, MaterialPageRoute(builder: (context) => Stock('kospi')));
        // },
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.60),
            //color: const Color(0xfff2f3f5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('코스피', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
                      Text('2,368.34',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w600)),
                      Text('+25.22(1.0%)',
                          style: TextStyle(fontSize:7, color: Colors.redAccent))
                    ],
                  ),
                ),
                // 차트
                KOSPIChart(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class KosdaqWidget extends StatelessWidget {
  const KosdaqWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        // onTap: () {
        //   Navigator.push(context,
        //       MaterialPageRoute(builder: (context) => Stock('kosdaq')));
        // },
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.60),
            //color: const Color(0xfff2f3f5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('코스닥', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),//,style: TextStyle(fontSize: 3)),
                      Text('782.05',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w600)),
                      Text('+9.21(1.1%)',
                          style: TextStyle(fontSize:5, color: Colors.redAccent))
                    ],
                  ),
                ),
                // 차트
                KOSDAQChart(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
