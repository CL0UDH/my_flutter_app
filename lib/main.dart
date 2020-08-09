import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/images_page.dart';
import 'package:my_flutter_app/pages/login_page.dart';
import 'package:my_flutter_app/pages/post_page.dart';
import 'package:my_flutter_app/pages/splash_page.dart';
import 'pages/home_page.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return GestureDetector(
      onTap: () {
        final FocusScopeNode focus = FocusScope.of(context);
        if (!focus.hasPrimaryFocus) {
          focus.unfocus();
        }
      },
      child: MaterialApp(
        home: SplashPage(),
        routes: {
          HomePage.routeName: (BuildContext context) => HomePage(),
          ImagesPage.routeName: (_) => ImagesPage(),
          PostsPage.routeName: (_) => PostsPage(),
          LoginPage.routeName: (_) => LoginPage(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Roboto'),
      ),
    );
  }
}
