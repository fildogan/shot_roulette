import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/features/database_page/cubit/database_page_cubit.dart';

class DatabaseBackButton extends StatelessWidget {
  const DatabaseBackButton({super.key, this.status});

  final Status? status;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: (() {
        status == Status.loading
            ? null
            : context.read<DatabasePageCubit>().goBack();
      }),
    );
  }
}
