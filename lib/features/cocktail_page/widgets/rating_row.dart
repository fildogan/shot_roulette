import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/change_rating_dialog/change_rating_dialog.dart';

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
            if (rootState.user != null &&
                !(rootState.user?.isAnonymous ?? false)) {
              return ElevatedButton(
                  onPressed: () async {
                    double? result = await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return ChangeRatingDialog(
                            userRating: state.userRating,
                          );
                        });
                    if (result != null) {
                      context
                          .read<CocktailPageCubit>()
                          .updateUserRating(result, rootState.user!.uid);
                    }
                  },
                  child: state.hasUserRated
                      ? Text('Change rating ${state.userRating.toString()}')
                      : const Text('Rate'));
            } else {
              return const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text(
                  'Sign in to rate',
                  style: TextStyle(fontSize: 12),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
