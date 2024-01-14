import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';
import 'package:shot_roulette/features/roll_shot/widgets/roll_shot_button.dart';

import 'package:shot_roulette/features/roll_shot/widgets/shot_recipe_card.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double mainContainerHeight = screenHeight * 0.6;

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
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Settings",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_drink),
                  label: "Roll",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Account",
                ),
              ],
            ),
            body: Builder(builder: (context) {
              if (state.pageIndex == 0) {
                return const Text('0');
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

class RollShotPage extends StatelessWidget {
  const RollShotPage({
    super.key,
    required this.mainContainerHeight,
    required this.state,
  });

  final double mainContainerHeight;
  final RollShotState state;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (state.chosenRecipe != null)
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: SizedBox(
                  height: double.infinity,
                  child: ShotRecipeCard(state: state),
                ),
              ),
            )
          else
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: mainContainerHeight,
                width: 150,
                child: Image.asset('assets/images/casino_roulette.png'),
              ),
            ),
          // Spacer(),
          RolllShotButton(state: state),
          const SizedBox(
            height: 10,
          ),
          // if (state.chosenRecipe != null) const ResetButton()
        ],
      ),
    );
  }
}
