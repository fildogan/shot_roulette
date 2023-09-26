import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';

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
              title: const Text('Roll Shot'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (state.chosenRecipe != null)
                    Text(state.chosenRecipe?.id ?? 'null'),
                  ElevatedButton(
                      onPressed: () {
                        context.read<RollShotCubit>().rollShot();
                      },
                      child: const Text('Roll Shot')),
                  ElevatedButton(
                      onPressed: () {
                        context.read<RollShotCubit>().resetShot();
                      },
                      child: const Text('Reset'))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
