import 'package:flutter/material.dart';

import '../../util/dimension.dart';

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
        height: Dimension.height(40),
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            side: MaterialStateProperty.all(const BorderSide(
              color: Colors.black12,
              width: 2,
            )),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimension.width(10)),
              ),
            ),
          ),
          onPressed: () {},
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
