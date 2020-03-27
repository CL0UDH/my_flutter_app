import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_flutter_app/widgets/circle_container.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Text("Bienvenido"),
              Text(
                "Jorge Luis Pescador Hernández",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 1,
                width: 100,
                margin: EdgeInsets.symmetric(vertical: 20),
                color: Color(0xffaaaaaa),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("14k Likes"),
                      SizedBox(
                        width: 10,
                      ),
                      CircleContainer(
                        child: Icon(
                          Icons.add,
                          color: Colors.green,
                        ),
                        width: 55,
                        height: 55,
                      ),
                    ],
                  ),
                  CircleContainer(
                    child: Icon(
                      Icons.remove,
                      color: Colors.red,
                    ),
                    width: 55,
                    height: 55,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// TODO: Continuar en la seccion 2: 31. Bottom Menu parte 1
