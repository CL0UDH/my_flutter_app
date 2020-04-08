import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/images_page.dart';
import 'package:my_flutter_app/pages/splash_page.dart';
import 'pages/home_page.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      home: SplashPage(),
      routes: {
        'home': (BuildContext context) => HomePage(),
        'images': (_) => ImagesPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}