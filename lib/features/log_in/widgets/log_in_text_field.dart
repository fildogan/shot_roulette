import 'package:flutter/material.dart';

@immutable
class LogInTextField extends StatelessWidget {
  const LogInTextField({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: null,
        tileColor: Colors.black87,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        title: child,
      ),
    );
  }
}
