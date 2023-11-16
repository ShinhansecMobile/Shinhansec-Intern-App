import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.60),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.symmetric(horizontal: 31, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('나의 자산', style: TextStyle(fontSize: 14)),
                  Text('258,105원',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Profit', style: TextStyle(fontSize: 8)),
                  Text(
                    '+50,18%',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.red, // 여기에 빨간색 지정
                    ),
                  ),
                  Text('11,050,801원',
                      style: TextStyle(
                          fontSize: 10, fontWeight: FontWeight.w600))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
