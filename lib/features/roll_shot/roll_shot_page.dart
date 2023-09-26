import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';

class RollShotPage extends StatelessWidget {
  const RollShotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RollShotCubit(),
      child: BlocBuilder<RollShotCubit, RollShotState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Roll Shot'),
            ),
            body: Column(),
          );
        },
      ),
    );
  }
}
