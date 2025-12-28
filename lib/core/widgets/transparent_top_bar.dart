import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/core/theme/colors.dart';
import 'package:instant_grrocery_delivery/core/util/dimension.dart';

class TransparentTopBar extends StatelessWidget {
  const TransparentTopBar({
    required this.title,
    this.trailingIcon,
    this.onTrailingPressed,
    Key? key,
  }) : super(key: key);

  final String title;
  final IconData? trailingIcon;
  final Function()? onTrailingPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      padding: EdgeInsets.symmetric(horizontal: context.w(10)),
      color: backgroundColor.withAlpha(100),
      child: Row(
        children: [
          BackButton(color: Colors.lightGreen.shade800),
          const Spacer(),
          Text(
            title,
            style: TextStyle(
              color: Colors.lightGreen.shade800,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: Icon(trailingIcon, color: Colors.lightGreen.shade800),
            onPressed: onTrailingPressed,
          ),
        ],
      ),
    );
  }
}

