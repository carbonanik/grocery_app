import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../../main.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key, required this.title, required this.hint, this.controller, this.keyboardType, this.obscureText = false,
  }) : super(key: key);

  final String title;
  final String hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: Dimension.height(20)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
          child: Text(
            title,
            style: TextStyle(
              fontSize: Dimension.width(15),
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
        ),
        SizedBox(height: Dimension.height(10)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: Dimension.width(20),
              ),
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.black12,
                fontWeight: FontWeight.w500,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimension.width(5)),
                borderSide: BorderSide(
                  color: Colors.black12,
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimension.width(5)),
                borderSide: BorderSide(
                  color: greenColor,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
