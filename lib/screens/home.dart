import 'package:flutter/material.dart';

import '../widgets/major_indices.dart';
import '../widgets/popular_list.dart';
import '../widgets/profile.dart';
import '../widgets/wallet.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFE5E5FF),
      body: Column(
        children: <Widget>[
          // Profile Widget
          Container (
            width: deviceWidth,
            height: deviceHeight * 0.15,
            child: Profile(),
          ),

          // Wallet Widget
          Container (
            width: deviceWidth,
            height: deviceHeight * 0.2,
            child: Wallet(),
          ),

          // 주요 지수 Widget
          Container (
            width: deviceWidth,
            height: deviceHeight * 0.25,
            child: MajorIndices(),
          ),

          // 인기 종목 Widget
          Container (
            width: deviceWidth,
            height: deviceHeight * 0.4,
            child: PopularList(),
          )
        ],
      ),
    );
  }
}
