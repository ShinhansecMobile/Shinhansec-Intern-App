import 'package:flutter/material.dart';

import 'popular_list_tile.dart';

class PopularListView extends StatefulWidget {
  const PopularListView({super.key});

  @override
  _PopularListViewState createState() => _PopularListViewState();
}

class _PopularListViewState extends State<PopularListView> {
  List<PopularData> popularDataList = List.generate(
    10,
        (index) => PopularData(stockIcon: const Icon(Icons.map), stockName: 'Item $index', stockPrice: index, stockProfit: index),
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal, // 가로 스크롤 설정
      itemCount: (popularDataList.length / 5).ceil(), // 한 행당 5개씩 배치
      itemBuilder: (context, rowIndex) {
        int startIndex = rowIndex * 5;
        int endIndex = (rowIndex + 1) * 5;

        if (endIndex > popularDataList.length) {
          endIndex = popularDataList.length;
        }

        List<PopularData> rowItems = popularDataList.sublist(startIndex, endIndex);

        return Column(
          children: rowItems.map((item) {
            return Expanded(
              child: PopularListTile(popularData: item),
            );
          }).toList(),
        );
      },
    );
  }
}
