import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/my_appbar.dart';

class PostsPage extends StatefulWidget {
  static final routeName = 'posts';
  PostsPage({Key key}) : super(key: key);

  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            ],
          ),
        ),
      ),
    );
  }
}
