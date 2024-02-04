import 'package:flutter/material.dart';

import 'package:shot_roulette/features/cocktail_page/widgets/custom_main_button.dart';

class SignInAlertDialog extends StatelessWidget {
  const SignInAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text('Sign in to add favourites'),
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
                    title: 'Close'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
