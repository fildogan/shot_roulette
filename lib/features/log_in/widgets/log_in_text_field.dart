import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/features/log_in/cubit/log_in_cubit.dart';

@immutable
class LogInTextField extends StatelessWidget {
  const LogInTextField({
    super.key,
    required this.child,
    this.isPassword,
    required this.state,
  });

  final Widget child;
  final bool? isPassword;
  final LogInState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: null,
        tileColor: Colors.black87,
        trailing: isPassword ?? false
            ? IconButton(
                onPressed: () {
                  context.read<LogInCubit>().changePasswordVisibility();
                },
                icon: state.showPassword
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off))
            : null,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        title: child,
      ),
    );
  }
}
