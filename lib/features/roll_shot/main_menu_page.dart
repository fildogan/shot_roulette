import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';
import 'package:shot_roulette/features/roll_shot/widgets/roll_shot_page.dart';
import 'package:shot_roulette/features/settings_page/settings_page.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double mainContainerHeight = screenHeight * 0.6;
    final localizations = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => RollShotCubit()..start(),
      child: BlocBuilder<RollShotCubit, RollShotState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(state.chosenRecipe?.titleEN ?? 'Roll Shot'),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.pageIndex,
              onTap: (newIndex) {
                context.read<RollShotCubit>().changePageIndex(newIndex);
              },
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: localizations.settings,
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.local_drink),
                  label: "Roll",
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.person),
                  label: localizations.account,
                ),
              ],
            ),
            body: Builder(builder: (context) {
              if (state.pageIndex == 0) {
                return SettingsPage(state: state);
              } else if (state.pageIndex == 1) {
                return RollShotPage(
                  mainContainerHeight: mainContainerHeight,
                  state: state,
                );
              } else {
                return const Text('2');
              }
            }),
          );
        },
      ),
    );
  }
}
