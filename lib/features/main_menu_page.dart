import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/cocktail_page.dart';
import 'package:shot_roulette/features/database_page/database_page.dart';
import 'package:shot_roulette/features/settings_page/settings_page.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key, required this.state});

  final RootState state;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return state.showStartImage
        ? const Scaffold(
            body: Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/cocktail_image.jpg'),
              ),
            ),
          )
        : OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) {
            return Scaffold(
              bottomNavigationBar: orientation == Orientation.landscape
                  ? null
                  : BottomNavigationBar(
                      currentIndex: state.pageIndex,
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
                  if (state.pageIndex == 0) {
                    return SettingsPage(rootState: state);
                  } else if (state.pageIndex == 1) {
                    return CocktailPage(
                      rootState: state,
                    );
                  } else {
                    return DatabasePage(
                      rootState: state,
                      orientation: orientation,
                    );
                  }
                }),
              ),
            );
          });
  }
}
