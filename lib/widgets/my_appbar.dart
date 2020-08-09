import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppbar extends StatelessWidget {
  final leftIcon, rightIcon;
  final VoidCallback onLeftClick, onRightClick;

  const MyAppbar(
      {Key key,
      @required this.leftIcon,
      @required this.rightIcon,
      this.onLeftClick,
      this.onRightClick})
      : super(key: key);
  // 'https://image.flaticon.com/icons/svg/1518/1518155.svg'
  // 'https://image.flaticon.com/icons/svg/2598/2598851.svg'
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CupertinoButton(
            onPressed: onLeftClick,
            child: SvgPicture.asset(
              leftIcon,
              width: 30,
            ),
            padding: EdgeInsets.all(15),
          ),
          Text(
            "PLACEHOLDER",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          CupertinoButton(
            onPressed: onRightClick,
            padding: EdgeInsets.all(0),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: SvgPicture.asset(
                    rightIcon,
                    width: 30,
                  ),
                ),
                Positioned(
                  right: 12,
                  top: 12,
                  child: Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
