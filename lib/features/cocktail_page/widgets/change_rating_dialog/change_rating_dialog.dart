import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/custom_main_button.dart';

class ChangeRatingDialog extends StatelessWidget {
  const ChangeRatingDialog({super.key, this.userRating, this.cocktailId});

  final double? userRating;
  final String? cocktailId;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingBar.builder(
              initialRating: userRating ?? 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
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
                CustomMainButton(onPressed: () {}, title: 'Save')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
