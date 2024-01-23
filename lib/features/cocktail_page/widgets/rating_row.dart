import 'package:flutter/material.dart';
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
    required this.state,
  });

  final CocktailPageState state;

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // Text("(${state.chosenRecipe?.ratings.length.toString() ?? "0"})"),
        // const SizedBox(
        //   width: 5,
        // ),
        // RatingBarIndicator(
        //   rating: state.ratingAverage,
        //   itemBuilder: (context, index) => const Icon(
        //     Icons.star,
        //   ),
        //   itemCount: 5,
        //   itemSize: 20.0,
        // ),
        // const Spacer(),
        // if (state.user != null)
        //   ElevatedButton(
        //       onPressed: () {}, child: const Text('Change rating (2.5)')),
      ],
    );
  }
}
