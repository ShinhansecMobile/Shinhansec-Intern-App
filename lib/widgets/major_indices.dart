import 'package:flutter/material.dart';

class MajorIndices extends StatefulWidget {
  const MajorIndices({Key? key}) : super(key: key);

  @override
  _MajorIndicesState createState() => _MajorIndicesState();
}

class _MajorIndicesState extends State<MajorIndices> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow, // 배경색 설정
      child: Text('Major Indices'),
    );
  }
}
