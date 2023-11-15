import 'package:flutter/material.dart';

import 'popular_list_view.dart';

class PopularList extends StatefulWidget {
  const PopularList({Key? key}) : super(key: key);

  @override
  _PopularListState createState() => _PopularListState();
}

class _PopularListState extends State<PopularList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      margin: const EdgeInsets.fromLTRB(31, 0, 31, 0), // 배경색 설정
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Text(
            '인기',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
          ),
          Expanded(
            child: PopularListView(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 17),
          )
        ],
      ),
    );
  }
}
