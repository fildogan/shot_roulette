import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';

class ResetSettingPageButton extends StatelessWidget {
  const ResetSettingPageButton({super.key, this.status});

  final Status? status;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: (() {
        status == Status.loading
            ? null
            : context.read<RollShotCubit>().resetSettingsPage();
      }),
    );
  }
}
