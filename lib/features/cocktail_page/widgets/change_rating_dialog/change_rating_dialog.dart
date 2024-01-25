import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/app/injection_container.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/change_rating_dialog/cubit/change_rating_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/custom_main_button.dart';

class ChangeRatingDialog extends StatelessWidget {
  const ChangeRatingDialog({
    super.key,
    this.userRating,
  });

  final double? userRating;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChangeRatingCubit>()..start(userRating),
      child: BlocBuilder<ChangeRatingCubit, ChangeRatingState>(
        builder: (context, state) {
          return Dialog(
            child: SizedBox(
              height: 200,
              child: state.status == Status.loading
                  ? const CircularProgressIndicator()
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RatingBar.builder(
                          initialRating: state.userRating ?? 0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            context
                                .read<ChangeRatingCubit>()
                                .changeUserRating(rating);
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomMainButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                title: 'Cancel'),
                            CustomMainButton(
                                onPressed: () {
                                  if (state.userRating != null) {
                                    Navigator.pop(context, state.userRating!);
                                  }
                                },
                                title: 'Save')
                          ],
                        ),
                      ],
                    ),
            ),
          );
        },
      ),
    );
  }
}
