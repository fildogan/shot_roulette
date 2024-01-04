import 'package:flutter/material.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';

class TasteNotesWrap extends StatelessWidget {
  const TasteNotesWrap({super.key, required this.state});

  final RollShotState state;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: [
        for (int i = 0; i < (state.chosenRecipe?.tasteNoteIds.length ?? 0); i++)
          Chip(
            padding: const EdgeInsets.all(0),
            label: Text(state.chosenRecipe?.tasteNoteIds[i] ?? ''),
          )
      ],
    );
  }
}
