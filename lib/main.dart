import 'package:daily_expenses/screens/register_screen.dart';
import 'package:daily_expenses/screens/signin_screen.dart';
import 'package:daily_expenses/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily Expenses App',
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      routes: {
        Welcome_Screen.screenRoute : (context) => Welcome_Screen(),
        SignIn_Screen.screenRoute : (context) => SignIn_Screen(),
        Register_Screen.screenRoute : (context) => Register_Screen(),
        // Chat_Screen.screenRoute : (context) => Chat_Screen(),
      },
      initialRoute: Welcome_Screen.screenRoute,
    );
  }
}