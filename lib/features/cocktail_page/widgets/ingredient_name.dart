import 'package:flutter/material.dart';
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart';

class IngredientName extends StatelessWidget {
  const IngredientName({
    super.key,
    required this.i,
    required this.state,
  });

  final int i;
  final CocktailPageState state;

  @override
  Widget build(BuildContext context) {
    return Text(state.ingredientNameList[i] ?? '');
  }
}
