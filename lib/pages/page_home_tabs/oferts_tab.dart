import 'package:flutter/material.dart';

class OfertsTab extends StatefulWidget {
  OfertsTab({Key key}) : super(key: key);

  @override
  _OfertsTabState createState() => _OfertsTabState();
}

class _OfertsTabState extends State<OfertsTab> {
  @override
  Widget build(BuildContext context) {
    print("Shop");
    return Container(
       child: Center(
         child: Text("Shop"),
       ),
    );
  }
}