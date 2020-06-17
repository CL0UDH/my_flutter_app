import 'package:flutter/material.dart';

class MoreTab extends StatefulWidget {
  MoreTab({Key key}) : super(key: key);

  @override
  _MoreTabState createState() => _MoreTabState();
}

class _MoreTabState extends State<MoreTab> {
  @override
  Widget build(BuildContext context) {
    print("more");
    return Container(
       child: Center(child: Text("More"),),
    );
  }
}