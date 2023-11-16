import 'package:flutter/material.dart';

class PopularData {
  final Icon stockIcon;
  final String stockName;
  final String stockPrice;
  final String stockProfit;

  PopularData({
    required this.stockIcon,
    required this.stockName,
    required this.stockPrice,
    required this.stockProfit,
  });

  PopularData.withoutIcon({
    required this.stockName,
    required this.stockPrice,
    required this.stockProfit,
  }) : stockIcon = _getProfitIcon(stockProfit);

  static Icon _getProfitIcon(String stockProfit) {
    if (stockProfit[0] == '+') {
      return Icon(Icons.arrow_upward, color: Colors.red);
    } else if (stockProfit[0] == '-') {
      return Icon(Icons.arrow_downward, color: Colors.blue);
    } else {
      return Icon(Icons.arrow_forward, color: Colors.black);
    }
  }
}


List<PopularData> popularDataList = [
  PopularData.withoutIcon(
      stockName: "에빅스",
      stockPrice: "8,402원",
      stockProfit: "+72.7%"
  ),
  PopularData.withoutIcon(
    stockName: "테슬라",
    stockPrice: "319,331원",
    stockProfit: "+1.4%"
  ),
  PopularData.withoutIcon(
    stockName: "SOXS",
    stockPrice: "11,384원",
    stockProfit: "-1.7%"
  ),
  PopularData.withoutIcon(
      stockName: "SOXL",
      stockPrice: "29,898원",
      stockProfit: "+1.8%"
  ),
  PopularData.withoutIcon(
      stockName: "엔비디아",
      stockPrice: "643,353원",
      stockProfit: "-2.2%"
  ),
  PopularData.withoutIcon(
      stockName: "니콜라",
      stockPrice: "1,431원",
      stockProfit: "-0.9%"
  ),
  PopularData.withoutIcon(
      stockName: "카이네이트 바이오파머",
      stockPrice: "3,114원",
      stockProfit: "+49.0%"
  ),
  PopularData.withoutIcon(
      stockName: "BOIL",
      stockPrice: "71,367원",
      stockProfit: "+6.2%"
  ),
  PopularData.withoutIcon(
      stockName: "아이온큐",
      stockPrice: "17,268원",
      stockProfit: "+2.6%"
  ),
  PopularData.withoutIcon(
      stockName: "KOLD",
      stockPrice: "73,832원",
      stockProfit: "-5.9%"
  ),
];
