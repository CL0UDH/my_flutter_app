import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return Text("HOME");
  }
}
