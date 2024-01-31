import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
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
    return BlocBuilder<RootCubit, RootState>(
      builder: (context, rootState) {
        return CustomMainButton(
          onPressed: () {
            context.read<CocktailPageCubit>().rollShot(
                rootState.selectedLanguage,
                rootState.showEnglishTranslations,
                rootState.user?.uid);
          },
          // title: state.cocktail == null ? 'Roll Cocktail' : 'Roll Again',
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Roll  '),
              Image.asset(
                'assets/images/dice.png',
                width: 45,
              ),
              Text(state.cocktail == null ? '  Cocktail' : '  Again')
            ],
          ),
        );
      },
    );
  }
}
