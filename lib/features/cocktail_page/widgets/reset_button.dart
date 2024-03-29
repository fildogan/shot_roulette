import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/custom_main_button.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return CustomMainButton(
      onPressed: () {
        context.read<CocktailPageCubit>().resetShot();
      },
      title: localizations.reset,
    );
  }
}
