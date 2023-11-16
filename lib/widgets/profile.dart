import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.pink,
      color: Color(0xFFE5E5FF),
      padding: EdgeInsets.fromLTRB(5, 20, 0, 0),
      margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(5,25, 5, 0),
            child: Image.asset(
              'assets/images/Ellipse45.png',
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '당신의 투자를 응원합니다.',
                    style: TextStyle(color: Color(0xFF03314B), fontSize: 12),
                  ),
                  Text(
                    '김신한',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF03314B),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(0, 35, 5, 0),
            child: IconButton(
              padding: EdgeInsets.zero, // 추가: IconButton의 패딩을 없애고,
              icon: Icon(Icons.notifications_none),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
