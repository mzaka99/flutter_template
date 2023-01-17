library flutter_template;

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  VoidCallback onPressed;
  ButtonStyle? style;
  final Widget child;
  CustomButton(
      {Key? key, required this.onPressed, required this.child, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: style ??
            TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              elevation: 9.0,
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
        child: child);
  }
}
