import 'package:flutter/material.dart';
import 'package:shot_roulette/app/core/enums.dart';

@immutable
class SettingButton extends StatelessWidget {
  const SettingButton({
    required this.buttonPosition,
    required this.onTap,
    required this.title,
    required this.trailing,
    this.titleWidget,
    super.key,
  });

  final void Function()? onTap;
  final ButtonPosition buttonPosition;
  final String title;
  final Widget trailing;
  final Widget? titleWidget;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.black54,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: buttonPosition == ButtonPosition.top ||
                buttonPosition == ButtonPosition.single
            ? const Radius.circular(10)
            : const Radius.circular(0),
        topRight: buttonPosition == ButtonPosition.top ||
                buttonPosition == ButtonPosition.single
            ? const Radius.circular(10)
            : const Radius.circular(0),
        bottomLeft: buttonPosition == ButtonPosition.bottom ||
                buttonPosition == ButtonPosition.single
            ? const Radius.circular(10)
            : const Radius.circular(0),
        bottomRight: buttonPosition == ButtonPosition.bottom ||
                buttonPosition == ButtonPosition.single
            ? const Radius.circular(10)
            : const Radius.circular(0),
      )),
      onTap: onTap,
      title: titleWidget ??
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
      trailing: trailing,
    );
  }
}
