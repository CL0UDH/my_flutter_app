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
      width: double.infinity,
      height: double.infinity,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    color: Color(0xfff8f8f8),
                    width: double.infinity,
                    height: constraints.maxHeight * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Avatar(size: constraints.maxHeight * 0.25,),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Bienvenido"),
                        Text(
                          "Jorge Pescador",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                    child: ListView.builder(
                      itemBuilder: (_, index) {
                        return Container(
                          width: 120,
                          height: 120,
                          margin: EdgeInsets.all(5),
                          color: Colors.black12,
                        );
                      },
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                    child: ListView.builder(
                      itemBuilder: (_, index) {
                        return Container(
                          width: 120,
                          height: 120,
                          margin: EdgeInsets.all(5),
                          color: Colors.black12,
                        );
                      },
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                    child: ListView.builder(
                      itemBuilder: (_, index) {
                        return Container(
                          width: 120,
                          height: 120,
                          margin: EdgeInsets.all(5),
                          color: Colors.black12,
                        );
                      },
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  // _isEnable == true
                  //     ? Cronometer(
                  //         initTime: 90,
                  //         fontSize: _fontSize,
                  //       )
                  //     : Container(),
                  // SizedBox(
                  //   height: 10,
                  // ),
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
                  // MyBtn(
                  //   label: "My Posts",
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, PostsPage.routeName);
                  //   },
                  // )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
