import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final Color? fillColor;
  final Color? textColor;
  final bool readOnly;
  final Function()? onTap;

  const AppTextField({
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.fillColor,
    this.textColor,
    this.readOnly = false,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      onTap: onTap,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: 24.0,
            right: 10,
          ),
          child: Icon(prefixIcon),
        ),
        suffixIcon: suffixIcon,
        filled: true,
        // fillColor: fillColor ?? Colors.white,
      ),
      validator: validator,
    );
  }
}
