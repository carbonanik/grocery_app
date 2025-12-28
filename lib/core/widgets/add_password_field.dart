import 'package:flutter/material.dart';

import 'add_text_field.dart';

class AppPasswordField extends StatefulWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final Color? fillColor;
  final Color? textColor;
  final bool readOnly;
  final Function()? onTap;

  const AppPasswordField({
    this.hintText,
    this.prefixIcon,
    this.controller,
    this.validator,
    this.fillColor,
    this.textColor,
    this.readOnly = false,
    this.onTap,
    super.key,
  });

  @override
  State<AppPasswordField> createState() => _AppPasswordFieldState();
}

class _AppPasswordFieldState extends State<AppPasswordField> {
  bool showPassword = false;

  void togglePasswordView() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: widget.controller,
      readOnly: widget.readOnly,
      onTap: widget.onTap,
      hintText: widget.hintText,
      prefixIcon: widget.prefixIcon,
      validator: widget.validator,
      fillColor: widget.fillColor,
      textColor: widget.textColor,
      suffixIcon: IconButton(
        icon: Icon(
          showPassword ? Icons.visibility : Icons.visibility_off,
        ),
        onPressed: togglePasswordView,
      ),
    );
  }
}
