import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Instagram',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontFamily: Theme.of(context).textTheme.headline6.fontFamily,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator(
              value: 10,
            ),
          ],
        ),
      ),
    );
  }
}
