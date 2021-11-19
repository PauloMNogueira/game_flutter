import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.text,
      required this.handleClick,
      required this.loading})
      : super(key: key);
  final String text;
  final VoidCallback handleClick;
  final bool loading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: handleClick,
      child: Text(
        text,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(40),
      ),
    );
  }
}
