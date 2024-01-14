import 'package:flutter/material.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
    required this.state,
  });

  final RollShotState state;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text('Settings')],
          ),
        ),
      ),
    );
  }
}
