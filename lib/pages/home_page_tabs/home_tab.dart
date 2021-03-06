import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/api/account_api.dart';
import 'package:shimmer/shimmer.dart';

class HomeTab extends StatefulWidget {
  HomeTab({Key key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  AccountApi _accountApi = AccountApi();
  List<dynamic> _users = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  _load() async {
    final users = await _accountApi.getUsers(1);
    setState(() {
      _users.addAll(users);
      _isLoading = false;
    });
  }

  Widget _shimmer() {
    return Container(
      height: 110,
      child: ListView.builder(
        itemBuilder: (_, index) {
          return Shimmer(
            period: Duration(seconds: 3),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 13,
                    width: 50,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            gradient: LinearGradient(colors: [Colors.white, Colors.grey[300]]),
          );
        },
        itemCount: 7,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _isLoading
            ? _shimmer()
            : Container(
                height: 110,
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    final dynamic item = _users[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 80,
                        ),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: ClipOval(
                                child: Image.network(
                                  item['avatar'],
                                ),
                              ),
                            ),
                            Text(
                              item['first_name'],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: _users.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
      ],
    );
  }
}
