import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';
import 'package:shot_roulette/features/roll_shot/widgets/ingredient_amount.dart';
import 'package:shot_roulette/features/roll_shot/widgets/ingredient_name.dart';
import 'package:shot_roulette/features/roll_shot/widgets/ingredient_table_header.dart';
import 'package:shot_roulette/features/roll_shot/widgets/ingredient_unit.dart';
import 'package:shot_roulette/features/roll_shot/widgets/number_of_servings_row.dart';
import 'package:shot_roulette/features/roll_shot/widgets/taste_notes_wrap.dart';

class ShotRecipeCard extends StatelessWidget {
  const ShotRecipeCard({
    super.key,
    required this.state,
  });

  final RollShotState state;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    child: Image.asset(
                      'assets/images/Mad-Dog.jpg',
                      fit: BoxFit.fill,
                      width: double.infinity,
                    )),
              ),
              const SizedBox(height: 5),
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
                      i < (state.chosenRecipe?.ingredients.length ?? 0);
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
                child: TasteNotesWrap(state: state),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Instructions: Lorem Ipsum'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: NumberOfServingsRow(
                  state: state,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Description: Lorem Ipsum'),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: RatingBarIndicator(
                  rating: 2.34,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    // color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 25.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
