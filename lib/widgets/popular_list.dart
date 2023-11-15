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
      color: Colors.green, // 배경색 설정
      child: const Column(
        children: <Widget> [
          Text('Popular List'),
          Expanded(
            child: PopularListView(),
          ),
        ],
      ),
    );
  }
}
