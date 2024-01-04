import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';
import 'package:shot_roulette/features/roll_shot/widgets/reset_button.dart';
import 'package:shot_roulette/features/roll_shot/widgets/roll_shot_button.dart';

import 'package:shot_roulette/features/roll_shot/widgets/shot_recipe_card.dart';

class RollShotPage extends StatelessWidget {
  const RollShotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RollShotCubit()..start(),
      child: BlocBuilder<RollShotCubit, RollShotState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(state.chosenRecipe?.titleEN ?? 'Roll Shot'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (state.chosenRecipe != null)
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: SizedBox(
                        height: 300,
                        child: ShotRecipeCard(state: state),
                      ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: SizedBox(
                        height: 300,
                        width: 150,
                        child: Image.asset('assets/images/casino_roulette.png'),
                      ),
                    ),
                  const SizedBox(
                    height: 50,
                  ),
                  const RolllShotButton(),
                  const SizedBox(
                    height: 25,
                  ),
                  const ResetButton()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
