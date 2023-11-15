import 'package:flutter/material.dart';
import 'kospi_kosdaq.dart';

class MajorIndices extends StatefulWidget {
  const MajorIndices({Key? key}) : super(key: key);

  @override
  _MajorIndicesState createState() => _MajorIndicesState();
}

class _MajorIndicesState extends State<MajorIndices> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(40, 0, 0, 10),
          child: Text(
            '주요 지수',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
          ),
        ),

        Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(40, 0, 40, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                KospiWidget(),
                SizedBox(width: 10),
                KosdaqWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
