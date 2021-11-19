import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({Key? key, required this.callback, required this.placeholder})
      : super(key: key);
  final Function callback;
  final String placeholder;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (String value) {
        callback(value);
      },
      decoration: InputDecoration(
          border: const OutlineInputBorder(), hintText: placeholder),
    );
  }
}
