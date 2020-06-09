import 'package:dev01/pages/home_page.dart';
import 'package:dev01/pages/login_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Awesome App",
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    routes: {
      "/login":(context) => LoginPage(),
      "/home":(context) => HomePage()
    },
  ));
}

