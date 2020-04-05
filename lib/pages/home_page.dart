import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_flutter_app/widgets/avatar.dart';
import 'package:my_flutter_app/widgets/bottom_menu.dart';
import 'package:my_flutter_app/widgets/cronometer.dart';
import 'package:my_flutter_app/widgets/my_appbar.dart';

class HomePage extends StatefulWidget {
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
                MyAppbar(),
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
                      CupertinoButton(
                        child: Text("Enabled: $_isEnable"),
                        onPressed: () {
                          setState(() {
                            _isEnable = !_isEnable;
                          });
                        },
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CupertinoButton(
                        child: Text("New fontSize"),
                        onPressed: () {
                          setState(() {
                            _fontSize += 1;
                          });
                        },
                        color: Colors.green,
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

// TODO: Continuar en la seccion 2: 43. Navegando entre pantallas - parte 1
