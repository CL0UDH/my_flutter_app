import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/my_btn.dart';

class LoginPage extends StatefulWidget {
  static final routeName = 'login';
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 300,
                  minWidth: 200,
                ),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: "E-mail",
                        hintStyle: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyBtn(
                      label: "Ingresar",
                      textColor: Colors.black38,
                      fullWidth: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
