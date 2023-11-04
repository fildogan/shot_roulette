import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';

class RollShotPage extends StatelessWidget {
  const RollShotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RollShotCubit()..start(),
      child: BlocBuilder<RollShotCubit, RollShotState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Roll Shot'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 75,
                        ),
                        Text(
                          state.chosenRecipe?.titleEN ?? '',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  if (state.chosenRecipe != null)
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                          height: 150,
                          child: Text(state.chosenRecipe?.id ?? 'null')),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset('assets/images/casino_roulette.png'),
                      ),
                    ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          context.read<RollShotCubit>().rollShot();
                        },
                        child: const Text('Roll Shot')),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          context.read<RollShotCubit>().resetShot();
                        },
                        child: const Text('Reset')),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
