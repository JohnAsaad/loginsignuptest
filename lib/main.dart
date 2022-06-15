import 'package:flutter/material.dart';
import 'package:newnew/home.dart';
import 'package:newnew/login_screen.dart';
import 'package:newnew/signup_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';




void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

