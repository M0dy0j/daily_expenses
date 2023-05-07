import 'package:flutter/material.dart';

class My_Button extends StatelessWidget {
  My_Button({required this.color, required this.text, required this.onPressed});

  final String text;
  final Color color;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(13),
        child: MaterialButton(
          onPressed:  onPressed,
          minWidth: 200,
          height: 45,
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
