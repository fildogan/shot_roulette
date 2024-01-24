import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
    required this.state,
  });

  final CocktailPageState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("(${state.ratings?.ratingList?.length.toString() ?? "0"})"),
        const SizedBox(
          width: 5,
        ),
        RatingBarIndicator(
          rating: state.ratingAverage,
          itemBuilder: (context, index) => const Icon(
            Icons.star,
          ),
          itemCount: 5,
          itemSize: 20.0,
        ),
        const Spacer(),
        BlocBuilder<RootCubit, RootState>(
          builder: (context, rootState) {
            if (rootState.user != null) {
              return ElevatedButton(
                  onPressed: () {}, child: const Text('Change rating (2.5)'));
            } else {
              return const SizedBox();
            }
          },
        ),
      ],
    );
  }
}
