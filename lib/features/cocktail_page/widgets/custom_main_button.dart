import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    super.key,
    required this.onPressed,
    this.title,
    this.widget,
  });

  final void Function() onPressed;
  final String? title;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget != null ? 200 : 100,
      child: ElevatedButton(
          onPressed: onPressed,
          child: title != null
              ? Text(
                  title ?? '',
                  textAlign: TextAlign.center,
                )
              : widget),
    );
  }
}
