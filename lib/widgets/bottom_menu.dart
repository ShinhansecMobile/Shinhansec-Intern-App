import 'package:flutter/material.dart';

import '../screens/home.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({super.key});

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  int currentPageIndex = 2;

  final List<Widget> pages = [
    Container(
      color: const Color(0xFFE5E5FF),
      alignment: Alignment.center,
      child: const Text('자산 페이지'),
    ),
    Container(
      color: const Color(0xFFE5E5FF),
      alignment: Alignment.center,
      child: const Text('혜택 페이지'),
    ),
    const Home(),
    Container(
      color: const Color(0xFFE5E5FF),
      alignment: Alignment.center,
      child: const Text('주식 페이지'),
    ),
    Container(
      color: const Color(0xFFE5E5FF),
      alignment: Alignment.center,
      child: const Text('전체 메뉴 페이지'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: '자산'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: '혜택'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: '주식'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: '전체'),
        ],
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        unselectedItemColor: const Color(0xFFC7C8C7), // 선택되지 않은 항목의 색상 지정
        unselectedFontSize: 12.0, // 선택되지 않은 항목의 폰트 크기
        selectedItemColor: const Color(0xFF8863E4), // 선택된 항목의 색상 변경
        selectedFontSize: 12.0, // 선택된 항목의 폰트 크기
      ),
    );
  }
}
