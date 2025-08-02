import 'package:flutter/material.dart';
import 'package:waselbaman/home/home.dart';
// هذا المسار حسب ما ذكرت، تأكد من صحته
import 'package:waselbaman/profilemanagershipment/profilemanager.dart';
import 'package:waselbaman/signin/signin.dart';
import 'package:waselbaman/signup/signup.dart';

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
        '/profile':
            (context) =>
                const ProfilePage(), // هنا استخدم ProfilePage وليس ProfileManagerPage
      },
    );
  }
}
