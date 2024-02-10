import 'package:flutter/material.dart';

class HomeAuthButton extends StatelessWidget {
  const HomeAuthButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 180,
        height: 50,
        child: ElevatedButton(
            style: ButtonStyle(
              // elevation: MaterialStateProperty.all(20),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  side: const BorderSide(width: 2, color: Color(0xff110708)),
                  borderRadius: BorderRadius.circular(16))),
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xff374529)),
            ),
            onPressed: onPressed,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xfffcac06)),
            )),
      ),
    );
  }
}
