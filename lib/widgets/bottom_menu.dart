import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff0f0f0),
      padding: EdgeInsets.all(10),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/icons/home.svg',
                  width: 30,
                ),
                Text("Home")
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.list,
                  size: 30,
                ),
                Text("List"),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.person,
                  size: 30,
                ),
                Text("Profile"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
