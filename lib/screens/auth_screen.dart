import 'package:flutter/material.dart';
import 'package:instagram/widgets/auth_form.dart';

class AuthenticationScreen extends StatefulWidget {
  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.2,
                      bottom: 10),
                  child: Text(
                    'Instagram',
                    style: TextStyle(
                      fontFamily:
                          Theme.of(context).textTheme.headline6.fontFamily,
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
                AuthForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
