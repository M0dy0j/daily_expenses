import 'package:daily_expenses/main.dart';
import 'package:daily_expenses/screens/register_screen.dart';
import 'package:daily_expenses/screens/signin_screen.dart';
import 'package:daily_expenses/widgets/My_Button.dart';
import 'package:flutter/material.dart';

class Welcome_Screen extends StatefulWidget {
  static const String screenRoute ='welcome_screen';
  Welcome_Screen({Key? key}) : super(key: key);

  @override
  _Welcome_ScreenState createState() {
    return _Welcome_ScreenState();
  }
}

class _Welcome_ScreenState extends State<Welcome_Screen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  Duration duration = Duration(seconds: 5);

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: duration);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.green,
                Color(0xFF81C784),
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.green,
              ],
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Hero(
                    tag: 'logo',
                    child: SizedBox(
                      height: controller.value * 100,
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                  SizedBox(width: 12,),
                  Text(
                    'Daily Expenses App',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      color: Colors.lightGreen[900],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              My_Button(
                color: Colors.green,
                text: 'Sign In',
                onPressed: () {
                  Navigator.pushNamed(context, SignIn_Screen.screenRoute);
                },
              ),
              My_Button(
                color: Colors.green,
                text: 'Register',
                onPressed: () {
                  Navigator.pushNamed(context, Register_Screen.screenRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
