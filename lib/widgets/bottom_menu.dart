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
      color: Colors.red,
      alignment: Alignment.center,
      child: const Text('Page 1'),
    ),
    Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: const Text('Page 2'),
    ),
    const Home(),
    // Container(
    //   color: Colors.orange,
    //   alignment: Alignment.center,
    //   child: const Text('Page 4'),
    // ),
    // Container(
    //   color: Colors.cyan,
    //   alignment: Alignment.center,
    //   child: const Text('Page 5'),
    // ),
    // 다른 페이지들도 추가
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      // bottomNavigationBar: NavigationBar(
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       currentPageIndex = index;
      //     });
      //   },
      //   indicatorColor: Colors.amber[800],
      //   selectedIndex: currentPageIndex,
      //   destinations: const <Widget>[
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.home),
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Home',
      //     ),
      //     NavigationDestination(
      //       icon: Icon(Icons.business),
      //       label: 'Business',
      //     ),
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.school),
      //       icon: Icon(Icons.school_outlined),
      //       label: 'School',
      //     ),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: '자산'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: '혜택'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          // BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: '주식'),
          // BottomNavigationBarItem(icon: Icon(Icons.menu), label: '전체'),
          // 다른 항목들도 추가
        ],
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
    );
  }
}
