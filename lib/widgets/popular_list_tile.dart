import 'package:flutter/material.dart';

class PopularData {
  Icon stockIcon;
  String stockName;
  int stockPrice;
  int stockProfit;

  PopularData({required this.stockIcon, required this.stockName, required this.stockPrice, required this.stockProfit});
}

class PopularListTile extends StatefulWidget {
  final PopularData popularData;

  const PopularListTile({super.key, required this.popularData});

  @override
  _PopularListTileState createState() => _PopularListTileState();
}

class _PopularListTileState extends State<PopularListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widget.popularData.stockIcon,
      title: Text(widget.popularData.stockName),
      subtitle: Text(widget.popularData.stockPrice.toString()),
/*      onTap: () {
        setState(() {

        });
      }, TODO : ADD Dialog Event */
    );
  }
}
