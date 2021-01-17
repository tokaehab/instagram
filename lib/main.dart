import 'package:flutter/material.dart';
import 'screens/auth_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

final MaterialColor mycolor = const MaterialColor(0xFF09080E, const {
  50: const Color(0xFF4E246B),
  100: const Color(0xFF8134AF),
  150: const Color(0xFF833AB4),
  200: const Color(0xFFC23585),
  300: const Color(0xFFC9285C),
  350: const Color(0xFFDA4A64),
  400: const Color(0xFFFF5B3F),
  500: const Color(0xFFF46040),
  600: const Color(0xFFFE9F4D),
  700: const Color(0xFFFFCB51),
  800: const Color(0xFFFFCB40),
  900: const Color(0xFFFFED40),
});

final Shader linearGradient = LinearGradient(
  colors: <Color>[
    Color(0xFF4E246B),
    Color(0xFF8134AF),
    Color(0xFF833AB4),
    Color(0xFFC23585),
    Color(0xFFC9285C),
    Color(0xFFDA4A64),
    Color(0xFFFF5B3F),
    Color(0xFFF46040),
    Color(0xFFFE9F4D),
    Color(0xFFFFCB51),
    Color(0xFFFFCB40),
    Color(0xFFFFED40),
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primaryColor: Color(0xFF09080E),
        primarySwatch: mycolor,
        primaryColorLight: mycolor.shade100,
        textTheme: TextTheme(
          headline6: TextStyle(
            //foreground: Paint()..shader = linearGradient,
            fontSize: 35,
            fontFamily: 'Galada',
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF09080E),
      ),
      home: HomeScreen(),
    );
  }
}
