import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_flutter_app/pages/chat_page.dart';
import 'package:my_flutter_app/pages/images_page.dart';
import 'package:my_flutter_app/pages/post_page.dart';
import 'package:my_flutter_app/widgets/avatar.dart';
import 'package:my_flutter_app/widgets/bottom_menu.dart';
import 'package:my_flutter_app/widgets/cronometer.dart';
import 'package:my_flutter_app/widgets/my_appbar.dart';
import 'package:my_flutter_app/widgets/my_btn.dart';

class HomePage extends StatefulWidget {
  static final routeName = 'home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isEnable = false;
  double _fontSize = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomMenu(
        items: [
          BottomMenuItem(
            iconPath: 'assets/icons/home.svg',
            label: 'Home',
          ),
          BottomMenuItem(
            iconPath: 'assets/icons/shop.svg',
            label: 'Shop',
          ),
          BottomMenuItem(
            iconPath: 'assets/icons/profile.svg',
            label: 'Profile',
          ),
          BottomMenuItem(
            iconPath: 'assets/icons/history.svg',
            label: 'History',
          ),
          BottomMenuItem(
            iconPath: 'assets/icons/menu.svg',
            label: 'More',
          ),
        ],
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                // AppBar
                MyAppbar(
                  rightIcon:
                      'https://image.flaticon.com/icons/svg/2598/2598851.svg',
                  leftIcon:
                      'https://image.flaticon.com/icons/svg/1518/1518155.svg',
                  onRightClick: () {
                    final route = MaterialPageRoute(
                        builder: (BuildContext _) => ChatPage(
                              username: "Jorge Luis",
                            ));
                    Navigator.push(context, route);
                  },
                  onLeftClick: () {
                    Navigator.pushNamed(context, ImagesPage.routeName,
                        arguments:
                            ImagesPageArgs(username: 'Jorge', isActive: true));
                  },
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Avatar(),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Bienvenido"),
                      Text(
                        "Jorge Pescador",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      _isEnable == true
                          ? Cronometer(
                              initTime: 90,
                              fontSize: _fontSize,
                            )
                          : Container(),
                      SizedBox(
                        height: 20,
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
                )
              ],
            )),
      ),
    );
  }
}

// TODO: Continuar en la seccion 2: 49 El Widget ListView Parte 1
