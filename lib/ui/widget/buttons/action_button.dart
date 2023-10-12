import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    this.onTap,
    required this.text,
    this.icon,
    this.enabled = true,
  }) : super(key: key);

  final Function()? onTap;
  final String text;
  final IconData? icon;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: enabled ? onTap : null,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Dimension.width(20),
          vertical: Dimension.height(15),
        ),
        decoration: BoxDecoration(
          color: enabled ? accentColor : Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            icon != null ? Icon(icon, color: Colors.white) : const SizedBox(),
            icon != null ? SizedBox(width: Dimension.width(10)) : const SizedBox(),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
