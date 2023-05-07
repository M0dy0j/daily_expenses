import 'package:flutter/material.dart';

class My_TextField extends StatelessWidget {
  const My_TextField({super.key, required this.hint_text, required this.onChanged});

  final String hint_text;
  final Function() onChanged;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      onChanged: (value) => onChanged,
      decoration: InputDecoration(
        hintText: hint_text,
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(13))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(13))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(13))),
      ),
    );
  }
}
