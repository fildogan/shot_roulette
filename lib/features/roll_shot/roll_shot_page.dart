import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';
import 'package:shot_roulette/features/roll_shot/widgets/ingredient_amount.dart';
import 'package:shot_roulette/features/roll_shot/widgets/ingredient_name.dart';
import 'package:shot_roulette/features/roll_shot/widgets/ingredient_table_header.dart';
import 'package:shot_roulette/features/roll_shot/widgets/ingredient_unit.dart';
import 'package:shot_roulette/features/roll_shot/widgets/number_of_servings_row.dart';

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
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  Table(
                                    columnWidths: const <int, TableColumnWidth>{
                                      0: IntrinsicColumnWidth(flex: 3),
                                      1: IntrinsicColumnWidth(flex: 1),
                                      2: IntrinsicColumnWidth(flex: 2),
                                    },
                                    children: [
                                      const TableRow(children: [
                                        IngredientTableHeader(
                                          title: 'Ingredient',
                                        ),
                                        IngredientTableHeader(
                                          title: 'Amount',
                                        ),
                                        IngredientTableHeader(
                                          title: 'Unit',
                                        ),
                                      ]),
                                      for (int i = 0;
                                          i <
                                              (state.chosenRecipe?.ingredients
                                                      .length ??
                                                  0);
                                          i++)
                                        TableRow(children: [
                                          IngredientName(i: i, state: state),
                                          IngredientAmount(i: i, state: state),
                                          IngredientUnit(i: i, state: state),
                                        ])
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Wrap(
                                      spacing: 10,
                                      children: [
                                        for (int i = 0;
                                            i <
                                                (state.chosenRecipe
                                                        ?.tasteNoteIds.length ??
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text('Instructions: Lorem Ipsum'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: NumberOfServingsRow(
                                      state: state,
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text('Description: Lorem Ipsum'),
                                  ),
                                ],
                              ),
                            ),
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
