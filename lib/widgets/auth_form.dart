import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  bool loginMode;
  AuthForm(this.loginMode);
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _passwordFocusNode = FocusNode();
  final _usernameFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  bool isPublic = true;
  bool _obscure = true;

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    _usernameFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(
                  labelText: 'email',
                  labelStyle: TextStyle(color: Colors.white),
                ),
                validator: (value) {
                  if (!value.contains('@') ||
                      !value.contains('.com') ||
                      value.isEmpty) return 'Invalid Email';
                  return null;
                },
                onSaved: (value) {
                  setState(() {});
                },
                onFieldSubmitted: (val) {
                  if (widget.loginMode)
                    FocusScope.of(context).requestFocus(_passwordFocusNode);
                  else
                    FocusScope.of(context).requestFocus(_usernameFocusNode);
                },
              ),
              if (!widget.loginMode)
                TextFormField(
                  key: ValueKey('username'),
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  focusNode: _usernameFocusNode,
                  validator: (value) {
                    if (value.length < 4)
                      return 'Username should be at least 4 characters';
                    return null;
                  },
                  onSaved: (value) {
                    setState(() {});
                  },
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_passwordFocusNode);
                  },
                ),
              TextFormField(
                key: ValueKey('password'),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white),
                  suffixIcon: IconButton(
                    icon: Icon(
                      !_obscure ? Icons.visibility : Icons.visibility_off,
                    ),
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
                  if (value.length < 8)
                    return 'Password should be at least 8 characters';
                  return null;
                },
                onSaved: (value) {},
              ),
              if (!widget.loginMode)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Public Account',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Switch.adaptive(
                        activeColor: Colors.white,
                        activeTrackColor: Colors.white,
                        value: isPublic,
                        onChanged: (value) {
                          setState(() {
                            isPublic = value;
                          });
                        })
                  ],
                ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    widget.loginMode ? 'Log in' : 'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
