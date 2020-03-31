import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/circle_container.dart';

class Cronometer extends StatefulWidget {
  @override
  CronometerState createState() => CronometerState();
}

class CronometerState extends State<Cronometer> {

  double _time = 0;

  @override
  void initState() {
    super.initState();
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: <Widget>[
          Text(
            _time.toString(),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                child: CircleContainer(child: Icon(Icons.play_arrow), size: 55),
                onPressed: () {
                  _time = _time + 1;
                  setState(() {});
                },
              ),
              CupertinoButton(
                child: CircleContainer(child: Icon(Icons.stop), size: 55),
                onPressed: () {
                  setState(() {
                    _time = _time -1;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
