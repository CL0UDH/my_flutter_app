import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_flutter_app/pages/chat_page.dart';
import 'package:my_flutter_app/pages/images_page.dart';
import 'package:my_flutter_app/pages/page_home_tabs/history_tab.dart';
import 'package:my_flutter_app/pages/page_home_tabs/home_tab.dart';
import 'package:my_flutter_app/pages/page_home_tabs/more_tab.dart';
import 'package:my_flutter_app/pages/page_home_tabs/oferts_tab.dart';
import 'package:my_flutter_app/pages/page_home_tabs/profile_tab.dart';
import 'package:my_flutter_app/widgets/bottom_menu.dart';
import 'package:my_flutter_app/widgets/my_appbar.dart';

class HomePage extends StatefulWidget {
  static final routeName = 'home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;
  final _menu = [
    BottomMenuItem(
      iconPath: 'assets/icons/home.svg',
      label: 'Home',
      content: HomeTab(),
    ),
    BottomMenuItem(
      iconPath: 'assets/icons/shop.svg',
      label: 'Shop',
      content: OfertsTab(),
    ),
    BottomMenuItem(
      iconPath: 'assets/icons/profile.svg',
      label: 'Profile',
      content: ProfileTab(),
    ),
    BottomMenuItem(
      iconPath: 'assets/icons/history.svg',
      label: 'History',
      content: HistoryTab(),
    ),
    BottomMenuItem(
      iconPath: 'assets/icons/menu.svg',
      label: 'More',
      content: MoreTab(),
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomMenu(
        currentPage: _currentPage,
        onChanged: (int newCurrentPage) {
          setState(() {
            _currentPage = newCurrentPage;
          });
        },
        items: _menu,
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                // AppBar
                MyAppbar(
                  rightIcon:
                      'https://image.flaticon.com/icons/svg/2598/2598851.svg',
                  leftIcon:
                      'https://image.flaticon.com/icons/svg/1518/1518155.svg',
                  onRightClick: () {
                    final route = MaterialPageRoute(
                        builder: (BuildContext _) => ChatPage(
                              username: "Jorge Luis",
                            ));
                    Navigator.push(context, route);
                  },
                  onLeftClick: () {
                    Navigator.pushNamed(context, ImagesPage.routeName,
                        arguments:
                            ImagesPageArgs(username: 'Jorge', isActive: true));
                  },
                ),
                Expanded(
                    child: IndexedStack(
                  children: _menu.map<Widget>((item) => item.content).toList(),
                  index: _currentPage,
                ))
              ],
            )),
      ),
    );
  }
}

// TODO: Continuar en la seccion 2: 57. Creando un PageView con el widget IndexedStack
