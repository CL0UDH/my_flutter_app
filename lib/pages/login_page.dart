import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/my_btn.dart';

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

  _submit() {
    FocusScope.of(context).unfocus();
    final bool isValid = _formKey.currentState.validate();
    if(isValid){
      
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
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 300,
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
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "*******",
                          labelText: "Password",
                          hintStyle: TextStyle(
                            color: Colors.black38,
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
                        height: 30,
                      ),
                      MyBtn(
                        label: "Ingresar",
                        textColor: Colors.black38,
                        fullWidth: true,
                        onPressed: _submit,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
