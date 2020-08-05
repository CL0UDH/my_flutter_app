import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_app/widgets/my_btn.dart';
import 'package:my_flutter_app/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoginPage extends StatefulWidget {
  static final routeName = 'login';
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode _focusNodePassword = FocusNode();
  GlobalKey<FormState> _formKey = GlobalKey();
  String _email = '', _password = '';

  @override
  void dispose() {
    _focusNodePassword.dispose();
    super.dispose();
  }

  _submit() async  {
    FocusScope.of(context).unfocus();
    final bool isValid = _formKey.currentState.validate();
    if (isValid) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool("wasLogin", true);
      Navigator.pushReplacementNamed(context, HomePage.routeName);
    }
  }

  String _validateEmail(String email) {
    if (email.isNotEmpty && email.contains("@")) {
      _email = email;
      return null;
    } else
      return "Invalid E-mail";
  }

  String _validatePassword(String password) {
    if (password.isNotEmpty && password.length > 4) {
      _password = password;
      return null;
    } else
      return "Invalid password";
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData media = MediaQuery.of(context);
    final Size size = media.size;
    final EdgeInsets padding = media.padding;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Container(
              height: size.height - padding.top - padding.bottom,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          top: 60,
                          bottom: 10,
                        ),
                        child: Image.network(
                          'https://www.thesmartgroup.com.au/wp-content/uploads/2016/04/placeholder-client.png',
                          color: Color(0xff304ffe),
                        ),
                      ),
                      Text(
                        "Flutter UI & UX",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                        ),
                      )
                    ],
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 330,
                      minWidth: 200,
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "example@domain.com",
                              labelText: "E-mail",
                              hintStyle: TextStyle(
                                color: Colors.black38,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              prefixIcon: Container(
                                width: 70,
                                height: 40,
                                padding: EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  'assets/icons/email.svg',
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            keyboardAppearance: Brightness.light,
                            textInputAction: TextInputAction.next,
                            validator: _validateEmail,
                            onFieldSubmitted: (String text) {
                              _focusNodePassword.nextFocus();
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "*******",
                              labelText: "Password",
                              hintStyle: TextStyle(
                                color: Colors.black38,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              prefixIcon: Container(
                                width: 70,
                                height: 40,
                                padding: EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  'assets/icons/key.svg',
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            keyboardAppearance: Brightness.light,
                            obscureText: true,
                            focusNode: _focusNodePassword,
                            textInputAction: TextInputAction.send,
                            validator: _validatePassword,
                            onFieldSubmitted: (text) {
                              _submit();
                            },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              CupertinoButton(
                                padding: EdgeInsets.zero,
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    "Olvide mi contraseña",
                                    style: TextStyle(
                                      color: Color(0xff304ffe),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width: 1,
                                        color: Color(0xff304ffe),
                                      ),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MyBtn(
                            label: "INGRESAR",
                            textColor: Colors.white,
                            fullWidth: true,
                            onPressed: _submit,
                            backgroundColor: Color(0xff304ffe),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            "O inicia con",
                            style: TextStyle(color: Colors.black54),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: MyBtn(
                                    label: "FACEBOOK",
                                    textColor: Colors.white,
                                    fullWidth: true,
                                    onPressed: () {},
                                    backgroundColor: Color(0xff3b5998),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 18)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: MyBtn(
                                  label: "GOOGLE",
                                  textColor: Colors.white,
                                  fullWidth: true,
                                  onPressed: () {},
                                  backgroundColor: Color(0xffDB4437),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 18),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
