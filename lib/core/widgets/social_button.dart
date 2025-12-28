import 'package:flutter/material.dart';

import 'package:instant_grrocery_delivery/core/util/dimension.dart';

class SocialLoginButton extends StatelessWidget {
  final String text;

  const SocialLoginButton({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: context.h(40),
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: WidgetStateProperty.all(0),
            backgroundColor: WidgetStateProperty.all(Colors.white),
            foregroundColor: WidgetStateProperty.all(Colors.black),
            side: WidgetStateProperty.all(const BorderSide(
              color: Colors.black12,
              width: 2,
            )),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(context.w(10)),
              ),
            ),
          ),
          onPressed: null,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

