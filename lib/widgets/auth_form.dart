import 'package:flutter/material.dart';
import 'package:instagram/providers/user_provider.dart';
import 'package:instagram/screens/home_screen.dart';
import 'package:instagram/widgets/measure_size.dart';
import 'package:provider/provider.dart';

class AuthForm extends StatefulWidget {
  AuthForm();
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _passwordFocusNode = FocusNode();
  final _usernameFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _username;
  String _password;
  bool isLoading;
  bool _obscure = true;
  var _fieldSize = 0.0;
  var _fieldCurrentHeight = 0.0;
  bool loginMode;
  @override
  void initState() {
    super.initState();
    isLoading = false;
    loginMode = false;
  }

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    _usernameFocusNode.dispose();
    super.dispose();
  }

  void tryToLogin() async {
    if (_formKey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });
      String error = await Provider.of<UserProvider>(context, listen: false)
          .login(_email, _password);

      if (error == null) {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      } else {
        setState(() {
          isLoading = false;
        });
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(error),
          backgroundColor: Colors.red[900],
        ));
      }
    }
  }

  void tryToRegister() async {
    if (_formKey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });
      String error = await Provider.of<UserProvider>(context, listen: false)
          .register(_email, _password, _username);
      if (error == null) {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      } else {
        setState(() {
          isLoading = false;
        });
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(error),
          backgroundColor: Colors.red[900],
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              MeasureSize(
                onChange: (Size size) {
                  if (mounted)
                    setState(() {
                      _fieldSize = size.height + 20;
                    });
                },
                child: TextFormField(
                  key: ValueKey('email'),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.redAccent,
                      ),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  validator: (value) {
                    setState(() {
                      _email = value;
                    });
                    if (!value.contains('@') ||
                        !value.contains('.com') ||
                        value.isEmpty) return 'Invalid Email';
                    return null;
                  },
                  onFieldSubmitted: (val) {
                    if (loginMode)
                      FocusScope.of(context).requestFocus(_passwordFocusNode);
                    else
                      FocusScope.of(context).requestFocus(_usernameFocusNode);
                  },
                ),
              ),
              AnimatedContainer(
                duration: Duration(seconds: 1),
                curve: Curves.bounceOut,
                height: _fieldCurrentHeight,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 400),
                  opacity: loginMode ? 0 : 1,
                  child: TextFormField(
                    key: ValueKey('username'),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                        ),
                      ),
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    focusNode: _usernameFocusNode,
                    validator: (value) {
                      setState(() {
                        _username = value;
                      });
                      if (!loginMode && value.length < 4)
                        return 'Username should be at least 4 characters';
                      return null;
                    },
                    onFieldSubmitted: (_) {
                      FocusScope.of(context).requestFocus(_passwordFocusNode);
                    },
                  ),
                ),
              ),
              TextFormField(
                key: ValueKey('password'),
                style: TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.redAccent,
                    ),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                  suffixIcon: IconButton(
                    icon: Icon(
                        !_obscure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.white),
                    onPressed: () {
                      setState(() {
                        _obscure = !_obscure;
                      });
                    },
                  ),
                ),
                obscureText: _obscure,
                focusNode: _passwordFocusNode,
                validator: (value) {
                  setState(() {
                    _password = value;
                  });
                  if (value.length < 8)
                    return 'Password should be at least 8 characters';
                  return null;
                },
              ),
              isLoading
                  ? Container(
                      child: CircularProgressIndicator(),
                      margin: EdgeInsets.symmetric(vertical: 5),
                    )
                  : Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: RaisedButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          if (loginMode)
                            tryToLogin();
                          else
                            tryToRegister();
                        },
                        child: Text(
                          loginMode ? 'Log in' : 'Sign up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        color: Colors.blue,
                      ),
                    ),
              FlatButton(
                onPressed: () {
                  if (loginMode)
                    _fieldCurrentHeight = _fieldSize;
                  else
                    _fieldCurrentHeight = 0.0;
                  setState(() {
                    loginMode = !loginMode;
                  });
                },
                child: Text(
                  loginMode
                      ? 'Create new account'
                      : 'You already have one ? log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
