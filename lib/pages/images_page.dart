import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/my_appbar.dart';

class ImagesPage extends StatefulWidget {

  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: <Widget>[
              MyAppbar(
                rightIcon:
                    'https://image.flaticon.com/icons/svg/2598/2598851.svg',
                leftIcon: 'https://image.flaticon.com/icons/svg/747/747872.svg',
                onLeftClick: () => Navigator.pop(context),
              ),
              Expanded(
                child: Center(
                  child: Text("Images Page"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
