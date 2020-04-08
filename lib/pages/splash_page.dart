import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with AfterLayoutMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  void afterFirstLayout(BuildContext context) {
    
    Future.delayed(Duration(seconds: 2)).then((_){
      print("Ir a Home");
      Navigator.pushReplacementNamed(context, 'home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(
          radius: 15,
        ),
      ),
    );
  }
}
