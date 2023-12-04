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
              title: Text(state.chosenRecipe?.titleEN ?? 'Roll Shot'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 75,
                      ),
                      Text(
                        state.chosenRecipe?.titleEN ?? '',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  if (state.chosenRecipe != null)
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: SizedBox(
                        height: 150,
                        child: Card(
                          child: Column(
                            children: [
                              Text(state.chosenRecipe?.titleEN ?? 'null'),
                              const SizedBox(height: 10),
                              for (int i = 0;
                                  i <
                                      (state.chosenRecipe?.ingredients.length ??
                                          0);
                                  i++)
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(state.chosenRecipe?.ingredients[i]
                                            .ingredientNameId ??
                                        'null'),
                                    Text(state.chosenRecipe?.ingredients[i]
                                            .amount.amount
                                            .toString() ??
                                        'null'),
                                    Text(state.chosenRecipe?.ingredients[i]
                                            .amount.unitId ??
                                        'null'),
                                  ],
                                ),
                              Wrap(
                                children: [
                                  for (int i = 0;
                                      i <
                                          (state.chosenRecipe?.tasteNoteIds
                                                  .length ??
                                              0);
                                      i++)
                                    Chip(
                                      label: Text(
                                          state.chosenRecipe?.tasteNoteIds[i] ??
                                              ''),
                                    )
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('number of servings: 4'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.asset('assets/images/casino_roulette.png'),
                      ),
                    ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          context.read<RollShotCubit>().rollShot();
                        },
                        child: const Text(
                          'Roll Shot',
                          textAlign: TextAlign.center,
                        )),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          context.read<RollShotCubit>().resetShot();
                        },
                        child: const Text('Reset')),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
