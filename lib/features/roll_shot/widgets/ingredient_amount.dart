import 'package:flutter/material.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';

class IngredientAmount extends StatelessWidget {
  const IngredientAmount({
    super.key,
    required this.i,
    required this.state,
  });

  final int i;
  final RootState state;

  @override
  Widget build(BuildContext context) {
    final double ingredientAmountDouble =
        ((state.chosenRecipe?.ingredients[i].amount.amount) ?? 0) *
            state.numberOfServings.toDouble();

    return Center(
      child: Text(formatDouble(ingredientAmountDouble)),
    );
  }
}

String formatDouble(double value) {
  // Convert the double to a string
  String stringValue = value.toStringAsFixed(1);

  // Remove trailing ".0" if it's a whole number
  if (stringValue.contains('.0')) {
    stringValue = stringValue.replaceAll('.0', '');
  }

  return stringValue;
}
