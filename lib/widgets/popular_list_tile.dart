import 'package:flutter/material.dart';

import '../models/popular_data.dart';

class PopularListTile extends StatefulWidget {
  final PopularData popularData;
  final int ranking;

  const PopularListTile({super.key, required this.popularData, required this.ranking});

  @override
  _PopularListTileState createState() => _PopularListTileState();
}

class _PopularListTileState extends State<PopularListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 62,
      child: Card(
        elevation: 0,
        color: const Color(0xFFE5E5FF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: Text('${widget.ranking}'),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: widget.popularData.stockIcon,
                ),
                Container(
                  child: Text(widget.popularData.stockName),
                ),
              ],
            ),
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.popularData.stockPrice.toString()),
                Text(widget.popularData.stockProfit.toString()),
              ],
            )
          ],
        )
      )
    ); // TODO : ADD Dialog Event */
  }
}
