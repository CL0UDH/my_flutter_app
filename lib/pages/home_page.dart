import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_app/widgets/circle_container.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Container(
          child: Text("Hola"),
          alignment: Alignment.bottomCenter,
        ),
      ),
    );
  }
}

// TODO: Continuar en la seccion 2: 29. El Widget Column
