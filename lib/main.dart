import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_signup/screens/splash_screen.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  Color _primaryColor = HexColor('#DC54FE');
  Color _accentColor = HexColor('#8A02AE');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: const SplashScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
