import 'package:flutter/material.dart';

import '../models/popular_data.dart';
import 'popular_dialog.dart';

class PopularListCard extends StatefulWidget {
  final PopularData popularData;
  final int ranking;

  const PopularListCard({super.key, required this.popularData, required this.ranking});

  @override
  _PopularListCardState createState() => _PopularListCardState();
}

class _PopularListCardState extends State<PopularListCard> {
  @override
  Widget build(BuildContext context) {
    String stockProfitStr = widget.popularData.stockProfit;
    Color stockProfitColor;

    if (stockProfitStr.isNotEmpty) {
      if (stockProfitStr[0] == '+') {
        stockProfitColor = Colors.red;
      } else if (stockProfitStr[0] == '-') {
        stockProfitColor = Colors.blue;
      } else {
        stockProfitColor = Colors.black;
      }
    } else {
      stockProfitColor = Colors.black;
    }

    return GestureDetector(
      onTap: () {
        // 터치 이벤트 발생 시 다이얼로그 띄우기
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return PopularDialog(popularData: widget.popularData);
          },
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 62,
        child: Card(
          elevation: 0,
          color: const Color(0xFFE5E5FF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: Text('${widget.ranking}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: widget.popularData.stockIcon,
                  ),
                  Container(
                    child: Text(widget.popularData.stockName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(widget.popularData.stockPrice.toString(),
                      style: TextStyle(fontSize: 14)),
                  Text(widget.popularData.stockProfit.toString(),
                      style: TextStyle(fontSize: 12, color: stockProfitColor)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
