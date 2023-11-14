import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple, // 배경색 설정
      child: Text('Wallet'),
    );
  }
}
