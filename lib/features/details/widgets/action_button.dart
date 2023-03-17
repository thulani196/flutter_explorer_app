import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback actionCallback;

  const ActionButton({
    super.key,
    required this.iconPath,
    required this.actionCallback,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: actionCallback,
        behavior: HitTestBehavior.opaque,
        child: Image.asset(iconPath));
  }
}
