import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/avatar.dart';
import 'package:my_flutter_app/widgets/cronometer.dart';
import 'package:my_flutter_app/widgets/my_btn.dart';

import '../post_page.dart';

class HomeTab extends StatefulWidget {
  HomeTab({Key key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  bool _isEnable = false;
  double _fontSize = 20;

  @override
  Widget build(BuildContext context) {
    print("Home");
    return Container(
      child: Column(
        children: <Widget>[
          Avatar(),
          SizedBox(
            height: 20,
          ),
          Text("Bienvenido"),
          Text(
            "Jorge Pescador",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          _isEnable == true
              ? Cronometer(
                  initTime: 90,
                  fontSize: _fontSize,
                )
              : Container(),
          SizedBox(
            height: 10,
          ),
          // CupertinoButton(
          //   child: Text("Enabled: $_isEnable"),
          //   onPressed: () {
          //     setState(() {
          //       _isEnable = !_isEnable;
          //     });
          //   },
          //   color: Colors.blue,
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // CupertinoButton(
          //   child: Text("Go to Chat"),
          //   onPressed: () {

          //   },
          //   color: Colors.green,
          // ),
          MyBtn(
            label: "My Posts",
            onPressed: () {
              Navigator.pushNamed(context, PostsPage.routeName);
            },
          )
        ],
      ),
    );
  }

}
