import 'package:flutter/material.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/auth/auth_page.dart';
import 'package:shot_roulette/features/main_menu_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key, required this.rootState});

  final RootState rootState;

  @override
  Widget build(BuildContext context) {
    return rootState.showStartImage
        ? const Image(
            image: AssetImage('assets/images/papercut_background.jpg'),
            fit: BoxFit.fitHeight,
          )
        : Builder(builder: (context) {
            // if (rootState.status == Status.loading) {
            //   return const CircularProgressIndicator();
            // } else
            if (rootState.user == null) {
              return const AuthPage();
            } else {
              return MainMenuPage(rootState: rootState);
            }
          });
  }
}
