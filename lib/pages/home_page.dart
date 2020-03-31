import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_flutter_app/widgets/avatar.dart';
import 'package:my_flutter_app/widgets/bottom_menu.dart';
import 'package:my_flutter_app/widgets/cronometer.dart';

class HomePage extends StatelessWidget {
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
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Cronometer(),
            ],
          ),
        ),
      ),
    );
  }
}

// TODO: Continuar en la seccion 2: 37. StateFulWidget parte 2
