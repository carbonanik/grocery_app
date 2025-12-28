import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/core/theme/colors.dart';

import 'package:instant_grrocery_delivery/core/util/dimension.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    required this.text,
    this.onPressed,
    this.padding,
    this.color,
    super.key,
  });

  final void Function()? onPressed;
  final String text;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.symmetric(horizontal: context.w(20)),
      width: double.infinity,
      height: context.h(40),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          backgroundColor: WidgetStateProperty.all(color ?? accentColor),
          foregroundColor: WidgetStateProperty.all(Colors.white),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: context.w(18),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}


