import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/login_page.dart';
import 'package:my_flutter_app/utils/dialogs.dart';
import 'package:my_flutter_app/widgets/avatar.dart';
import 'package:my_flutter_app/widgets/left_right_icon_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MoreTab extends StatefulWidget {
  MoreTab({Key key}) : super(key: key);

  @override
  _MoreTabState createState() => _MoreTabState();
}

class _MoreTabState extends State<MoreTab> {
  _logOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    Navigator.pushNamedAndRemoveUntil(
        context, LoginPage.routeName, (_) => false);
  }

  _confirm() async {
    final isOk = await Dialogs.confirm(
      context,
      title: "ACCIÓN REQUERIDA",
      body: "Está seguro que desea salir de su cuenta?",
    );
    print("isOk $isOk");
    if (isOk) {
      _logOut();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xfff8f8f8),
              padding: EdgeInsets.symmetric(
                vertical: 30,
              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Avatar(
                    size: 150,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Bienvenido"),
                  Text(
                    "Jorge Pescador",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            LeftRightIconButton(
              label: 'Cerrar sesión',
              leftIcon: 'assets/icons/logout.svg',
              onPressed: _confirm,
              rightIcon: 'assets/icons/down-arrow.svg',
            ),
          ],
        ),
      ),
    );
  }
}
