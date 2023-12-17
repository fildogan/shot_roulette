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
                  if (state.chosenRecipe != null)
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: SizedBox(
                        height: 300,
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Center(
                                    child: Text(
                                        state.chosenRecipe?.titleEN ?? 'null')),
                              ),
                              const SizedBox(height: 10),
                              Table(
                                columnWidths: const <int, TableColumnWidth>{
                                  0: IntrinsicColumnWidth(flex: 3),
                                  1: IntrinsicColumnWidth(flex: 1),
                                  2: IntrinsicColumnWidth(flex: 2),
                                },
                                children: [
                                  const TableRow(children: [
                                    Center(child: Text('name')),
                                    Center(child: Text('amount')),
                                    Center(child: Text('unit')),
                                  ]),
                                  for (int i = 0;
                                      i <
                                          (state.chosenRecipe?.ingredients
                                                  .length ??
                                              0);
                                      i++)
                                    TableRow(children: [
                                      Center(
                                        child: Text(state
                                                .chosenRecipe
                                                ?.ingredients[i]
                                                .ingredientNameId ??
                                            'null'),
                                      ),
                                      Center(
                                        child: Text(state.chosenRecipe
                                                ?.ingredients[i].amount.amount
                                                .toString() ??
                                            'null'),
                                      ),
                                      Center(
                                        child: Text(state
                                                .chosenRecipe
                                                ?.ingredients[i]
                                                .amount
                                                .unitId ??
                                            'null'),
                                      ),
                                    ])
                                ],
                              ),
                              // for (int i = 0;
                              //     i <
                              //         (state.chosenRecipe?.ingredients.length ??
                              //             0);
                              //     i++)
                              //   Row(
                              //     mainAxisAlignment:
                              //         MainAxisAlignment.spaceAround,
                              //     children: [
                              //       Text(state.chosenRecipe?.ingredients[i]
                              //               .ingredientNameId ??
                              //           'null'),
                              //       Text(state.chosenRecipe?.ingredients[i]
                              //               .amount.amount
                              //               .toString() ??
                              //           'null'),
                              //       Text(state.chosenRecipe?.ingredients[i]
                              //               .amount.unitId ??
                              //           'null'),
                              //     ],
                              //   ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Wrap(
                                  spacing: 10,
                                  children: [
                                    for (int i = 0;
                                        i <
                                            (state.chosenRecipe?.tasteNoteIds
                                                    .length ??
                                                0);
                                        i++)
                                      Chip(
                                        padding: const EdgeInsets.all(0),
                                        label: Text(state.chosenRecipe
                                                ?.tasteNoteIds[i] ??
                                            ''),
                                      )
                                  ],
                                ),
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
                        height: 300,
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
