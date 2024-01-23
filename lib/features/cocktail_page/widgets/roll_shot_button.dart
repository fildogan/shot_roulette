import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/custom_main_button.dart';

class RolllShotButton extends StatelessWidget {
  const RolllShotButton({
    super.key,
    required this.state,
  });

  final CocktailPageState state;

  @override
  Widget build(BuildContext context) {
    return CustomMainButton(
      onPressed: () {
        context.read<CocktailPageCubit>().rollShot();
      },
      title: state.cocktail == null ? 'Roll Shot' : 'Roll Again',
    );
  }
}
