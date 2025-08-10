import 'package:flutter/material.dart';
import 'package:waselbaman/adminprofile/adminprofile.dart';
import 'package:waselbaman/home/home.dart';
import 'package:waselbaman/profilemanagershipment/profilemanager.dart';
import 'package:waselbaman/signin/signin.dart';
import 'package:waselbaman/signup/signup.dart';
import 'package:waselbaman/profilediliveryman/profilediliveryman.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login and sign up app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Raleway"),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/profile': (context) => const ProfilePage(),
        '/profileDeliveryMan': (context) => ProfileDeliveryManPage(),
        '/adminprofile': (context) => const Adminprofile(),
      },
    );
  }
}
