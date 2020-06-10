import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/my_appbar.dart';

class ImagesPageArgs {
  final String username;
  final bool isActive;

  ImagesPageArgs({@required this.username, @required this.isActive});
}

class ImagesPage extends StatefulWidget {
  static final routeName = 'images';
  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    final ImagesPageArgs args = ModalRoute.of(context).settings.arguments;

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
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: 300,
                        height: 300,
                        color: Colors.blue,
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://image.freepik.com/free-vector/leaves-background-with-metallic-foil_79603-914.jpg',
                          fit: BoxFit.cover,
                          placeholder: (_, __) {
                            return Center(
                              child: CupertinoActivityIndicator(
                                radius: 15,
                              ),
                            );
                          },
                        ),
                      ),
                      Positioned(
                        right: 85,
                        top: 95,
                        child: Text(
                          " HOLA\nMUNDO",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
