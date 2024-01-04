import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../../main.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.title,
    required this.hint,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.padding,
  }) : super(key: key);

  final String? title;
  final String hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: context.w(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title != null
              ? SizedBox(height: context.h(20))
              : const SizedBox(),
          title != null
              ? Text(
                  title!,
                  style: TextStyle(
                    fontSize: context.w(16),
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                )
              : const SizedBox(),
          title != null
              ? SizedBox(height: context.h(10))
              : const SizedBox(),
          TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText,
            validator: validator,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: context.w(20),
              ),
              hintText: hint,
              hintStyle: const TextStyle(
                color: Colors.black12,
                fontWeight: FontWeight.w500,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(context.w(5)),
                borderSide: const BorderSide(
                  color: Colors.black12,
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(context.w(5)),
                borderSide: const BorderSide(
                  color: accentColor,
                  width: 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
