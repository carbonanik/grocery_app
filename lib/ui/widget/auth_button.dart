import 'package:flutter/material.dart';

import '../../main.dart';
import '../../util/dimension.dart';

class AuthButton extends StatelessWidget {
  const AuthButton(
      {super.key, this.onPressed, this.text = 'Continue', this.padding});

  final void Function()? onPressed;
  final String text;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.symmetric(horizontal: Dimension.width(20)),
      width: double.infinity,
      height: Dimension.height(45),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(greenColor),
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
