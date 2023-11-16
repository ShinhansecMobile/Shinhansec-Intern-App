import 'package:flutter/material.dart';
import 'package:h_stock/models/popular_data.dart';

class PopularDialog extends StatefulWidget {
  final PopularData popularData;

  const PopularDialog({Key? key, required this.popularData}) : super(key: key);

  @override
  _PopularDialogState createState() => _PopularDialogState();
}

class _PopularDialogState extends State<PopularDialog> {
  @override
  Widget build(BuildContext context) {
    PopularData popularData = widget.popularData;

    String stockProfitStr = popularData.stockProfit;
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

    return AlertDialog(
      backgroundColor: Color(0xFFEBEBFF),
      elevation: 4,
      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 32),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 32),
          Text(popularData.stockName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          SizedBox(height: 8),
          CircleAvatar(
            backgroundColor: Colors.white, // 배경색 설정
            radius: 30, // 반지름 크기 설정
            child: Icon(
              Icons.star,
              color: Colors.yellow, // 아이콘 색상 설정
              size: 50, // 아이콘 크기 설정
            ),
          ),
          Text(popularData.stockPrice.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
          Text(popularData.stockProfit.toString(),
              style: TextStyle(fontSize: 14, color: stockProfitColor)),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF8863E4), // 원하는 색상으로 변경
              ),
              child: const Text('매수')
            ),
            Padding(padding: EdgeInsets.only(right: 26)),
            FilledButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white.withOpacity(0.6), // 원하는 색상으로 변경
              ),
              child: const Text('매도', style: TextStyle(fontSize: 14, color: Color(0xFF606060))),
            ),
            SizedBox(height: 32),
          ],
        ),
      ],
    );
  }
}
