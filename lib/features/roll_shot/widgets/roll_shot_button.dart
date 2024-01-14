import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';
import 'package:shot_roulette/features/roll_shot/widgets/custom_main_button.dart';

class RolllShotButton extends StatelessWidget {
  const RolllShotButton({
    super.key,
    required this.state,
  });

  final RollShotState state;

  @override
  Widget build(BuildContext context) {
    return CustomMainButton(
      onPressed: () {
        context.read<RollShotCubit>().rollShot();
      },
      title: state.chosenRecipe == null ? 'Roll Shot' : 'Roll Again',
    );
  }
}
