import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            title,
            textAlign: TextAlign.center,
          )),
    );
  }
}
