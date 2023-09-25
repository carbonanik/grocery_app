import 'package:flutter/material.dart';

import '../../main.dart';
import '../../util/dimension.dart';

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
      padding: padding ?? EdgeInsets.symmetric(horizontal: Dimension.width(20)),
      width: double.infinity,
      height: Dimension.height(45),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(color ?? accentColor),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: Dimension.width(18),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
