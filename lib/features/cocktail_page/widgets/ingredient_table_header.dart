import 'package:flutter/material.dart';

class IngredientTableHeader extends StatelessWidget {
  const IngredientTableHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
