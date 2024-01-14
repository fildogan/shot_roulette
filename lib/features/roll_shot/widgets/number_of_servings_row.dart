import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';

class NumberOfServingsRow extends StatelessWidget {
  const NumberOfServingsRow({
    super.key,
    required this.state,
  });

  final RollShotState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('number of servings:'),
        const Spacer(),
        IconButton(
          onPressed: () {
            context.read<RollShotCubit>().decreaseNumberOfServings();
          },
          icon: const Icon(Icons.remove_circle_outline_rounded),
        ),
        const SizedBox(width: 15),
        Text(
          state.numberOfServings.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 15),
        IconButton(
          onPressed: () {
            context.read<RollShotCubit>().increaseNumberOfServings();
          },
          icon: const Icon(Icons.add_circle_outline_rounded),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
