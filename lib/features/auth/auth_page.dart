import 'package:flutter/material.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/main_menu_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key, required this.rootState});

  final RootState rootState;

  @override
  Widget build(BuildContext context) {
    // if (rootState.status == Status.loading) {
    //   return const CircularProgressIndicator();
    // }
    // if (rootState.user == null) {
    //   // return LoginPage();
    //   return const CircularProgressIndicator();
    // }

    return MainMenuPage(rootState: rootState);
  }
}
