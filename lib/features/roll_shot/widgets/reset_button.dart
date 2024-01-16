import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';
import 'package:shot_roulette/features/roll_shot/widgets/custom_main_button.dart';

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
        context.read<RollShotCubit>().resetShot();
      },
      title: localizations.reset,
    );
  }
}
