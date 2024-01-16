import 'package:flutter/material.dart';

@immutable
class Header extends StatelessWidget {
  const Header(
    this.text, {
    super.key,
  });

  final String? text;

  @override
  Widget build(BuildContext context) {
    return (text ?? '').isEmpty || text == null
        ? const SizedBox(
            height: 20,
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(text ?? 'Error: null text'),
              ),
              const SizedBox(height: 10),
            ],
          );
  }
}
