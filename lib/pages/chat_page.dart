import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/my_appbar.dart';

class ChatPage extends StatefulWidget {
  final String username;
  ChatPage({Key key,@required this.username}) : assert(username != null), super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
                    'assets/icons/chat.svg',
                leftIcon: 'assets/icons/back.svg',
                onLeftClick: () => Navigator.pop(context),
              ),
              Expanded(
                child: Center(
                  child: Text(widget.username),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
