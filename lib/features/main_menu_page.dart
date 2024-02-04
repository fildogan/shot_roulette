import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/cocktail_page.dart';
import 'package:shot_roulette/features/database_page/database_page.dart';
import 'package:shot_roulette/features/settings_page/settings_page.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key, required this.rootState});

  final RootState rootState;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      return Stack(
        children: [
          const Image(
            image: AssetImage('assets/images/background_light.jpg'),
            fit: BoxFit.fill,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            bottomNavigationBar: orientation == Orientation.landscape
                ? null
                : BottomNavigationBar(
                    backgroundColor: const Color.fromARGB(255, 38, 21, 18),
                    currentIndex: rootState.pageIndex,
                    onTap: (newIndex) {
                      context.read<RootCubit>().changePageIndex(newIndex);
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
                        icon: const Icon(Icons.storage),
                        label: localizations.database,
                      ),
                    ],
                  ),
            body: SafeArea(
              child: Builder(builder: (context) {
                if (rootState.pageIndex == 0) {
                  return SettingsPage(rootState: rootState);
                } else if (rootState.pageIndex == 1) {
                  return CocktailPage(
                    rootState: rootState,
                  );
                } else {
                  return DatabasePage(
                    rootState: rootState,
                    orientation: orientation,
                  );
                }
              }),
            ),
          ),
        ],
      );
    });
  }
}
