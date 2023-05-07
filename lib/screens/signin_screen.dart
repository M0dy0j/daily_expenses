import 'package:daily_expenses/widgets/My_Button.dart';
import 'package:daily_expenses/widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class SignIn_Screen extends StatefulWidget {
  static const String screenRoute = 'signin_screen';

  SignIn_Screen({Key? key}) : super(key: key);

  @override
  _SignIn_ScreenState createState() {
    return _SignIn_ScreenState();
  }
}

class _SignIn_ScreenState extends State<SignIn_Screen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.green[600]!,
              Colors.white,
              Colors.greenAccent,
              Colors.white,
              Colors.green[300]!,
            ],
            center: Alignment.topCenter,
            radius: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: 'logo',
                child: SizedBox(
                  height: 150,
                  child: Image.asset(
                    'images/logo.png',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: My_TextField(hint_text: 'User Name', onChanged: () {}),
              ),
              My_TextField(hint_text: 'Password', onChanged: () {}),
              const SizedBox(
                height: 10,
              ),
              My_Button(color: Colors.green, text: 'Sign In', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
