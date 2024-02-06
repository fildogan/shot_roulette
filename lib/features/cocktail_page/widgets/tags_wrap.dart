import 'package:flutter/material.dart';
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart';

class TagsWrap extends StatelessWidget {
  const TagsWrap({super.key, required this.state});

  final CocktailPageState state;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: [
        for (int i = 0; i < (state.tagsList.length); i++)
          Chip(
            padding: const EdgeInsets.all(0),
            label: Text(
              state.tagsList[i],
              style: const TextStyle(fontSize: 12),
            ),
          )
      ],
    );
  }
}
