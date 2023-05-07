import 'package:daily_expenses/widgets/My_Button.dart';
import 'package:daily_expenses/widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class Register_Screen extends StatefulWidget {
  static const String screenRoute = 'register_screen';

  Register_Screen({Key? key}) : super(key: key);

  @override
  _Register_ScreenState createState() {
    return _Register_ScreenState();
  }
}

class _Register_ScreenState extends State<Register_Screen> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.white,
              Colors.green,
            ],
            center: Alignment.center,
            radius: 1.3,
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
                child: My_TextField(hint_text: 'Email', onChanged: () {}),
              ),
              My_TextField(hint_text: 'User Name', onChanged: () {}),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: My_TextField(hint_text: 'Password', onChanged: () {}),
              ),
              My_TextField(hint_text: 'Re-Password', onChanged: () {}),
              const SizedBox(
                height: 10,
              ),
              My_Button(color: Colors.green, text: 'Register', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}