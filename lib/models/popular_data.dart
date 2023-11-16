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
}


List<PopularData> popularDataList = [
  PopularData(
      stockIcon: const Icon(Icons.map),
      stockName: "에빅스",
      stockPrice: "8,402원",
      stockProfit: "+72.7%"
  ),
  PopularData(
    stockIcon: const Icon(Icons.map),
    stockName: "테슬라",
    stockPrice: "319,331원",
    stockProfit: "+1.4%"
  ),
  PopularData(
    stockIcon: const Icon(Icons.map),
    stockName: "SOXS",
    stockPrice: "11,384원",
    stockProfit: "-1.7%"
  ),
  PopularData(
      stockIcon: const Icon(Icons.map),
      stockName: "SOXL",
      stockPrice: "29,898원",
      stockProfit: "+1.8%"
  ),
  PopularData(
      stockIcon: const Icon(Icons.map),
      stockName: "엔비디아",
      stockPrice: "643,353원",
      stockProfit: "-2.2%"
  ),
  PopularData(
      stockIcon: const Icon(Icons.map),
      stockName: "니콜라",
      stockPrice: "1,431원",
      stockProfit: "-0.9%"
  ),
  PopularData(
      stockIcon: const Icon(Icons.map),
      stockName: "카이네이트 바이오파머",
      stockPrice: "3,114원",
      stockProfit: "+49.0%"
  ),
  PopularData(
      stockIcon: const Icon(Icons.map),
      stockName: "BOIL",
      stockPrice: "71,367원",
      stockProfit: "+6.2%"
  ),
  PopularData(
      stockIcon: const Icon(Icons.map),
      stockName: "아이온큐",
      stockPrice: "17,268원",
      stockProfit: "+2.6%"
  ),
  PopularData(
      stockIcon: const Icon(Icons.map),
      stockName: "KOLD",
      stockPrice: "73,832원",
      stockProfit: "-5.9%"
  ),
];
