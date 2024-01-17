import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';
import 'package:shot_roulette/features/settings_page/widgets/reset_settings_page_button.dart';

@immutable
class LogInPage extends StatelessWidget {
  const LogInPage({
    super.key,
    required this.state,
  });

  final RollShotState state;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return BlocBuilder<RollShotCubit, RollShotState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: const ResetSettingPageButton(),
            title: Text(localizations.logIn),
          ),
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
