import 'package:flutter/material.dart';

import 'package:instant_grrocery_delivery/core/theme/colors.dart';


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool centerTitle;

  @override
  final Size preferredSize;

  const MyAppBar({
    super.key,
    this.title,
    this.centerTitle = false,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const BackButton(
        color: Colors.lightGreen,
      ),
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      title: title != null
          ? Text(title!, style: const TextStyle(color: Colors.black))
          : null,
    );
  }
}

