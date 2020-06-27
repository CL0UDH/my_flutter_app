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
  String _email = '', _password = '', _errorEmail, _errorPassword;

  @override
  void dispose() {
    _focusNodePassword.dispose();
    super.dispose();
  }

  _submit(){
    FocusScope.of(context).unfocus();
    _errorEmail = _validateEmail();
    _errorPassword = _validatePassword();

    if(_errorEmail != null || _errorPassword != null){
      setState(() {});
      return;
    }
    setState(() {});
  }

  String _validateEmail(){
    if(_email.isNotEmpty && _email.contains("@")) return null;
    else return "Invalid E-mail";
  }

  String _validatePassword(){
    if(_password.isNotEmpty && _password.length > 4 ) return null;
    else return "Invalid password";
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
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: "example@domain.com",
                        labelText: "E-mail",
                        hintStyle: TextStyle(
                          color: Colors.black38,
                        ),
                        errorText: _errorEmail,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      keyboardAppearance: Brightness.light,
                      textInputAction: TextInputAction.next,
                      onChanged: (String text){
                        _email = text;
                      },
                      onSubmitted: (String text){
                        _focusNodePassword.nextFocus();
                      },
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "*******",
                        labelText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.black38,
                        ),
                        errorText: _errorPassword,
                      ),
                      keyboardAppearance: Brightness.light,
                      obscureText: true,
                      focusNode: _focusNodePassword,
                      textInputAction: TextInputAction.send,
                      onChanged: (String text){
                        _password = text;
                      },
                      onSubmitted: (text){
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
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
