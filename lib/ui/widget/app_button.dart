import 'package:flutter/material.dart';

import '../theme/colors.dart';


class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const AppButton({
    super.key,
    this.onPressed,
    this.child,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 46),
        ),
        backgroundColor: WidgetStateProperty.all(backgroundColor ?? accentColor),
        foregroundColor: WidgetStateProperty.all(foregroundColor ?? Colors.white),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
      child: child,
    );
  }
}
