import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool centerTitle;

  @override
  final Size preferredSize;

  const MyAppBar({Key? key, this.title, this.centerTitle = false})
    : preferredSize = const Size.fromHeight(kToolbarHeight),
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const BackButton(color: Colors.lightGreen),
      backgroundColor: backgroundColor.withAlpha(100),
      elevation: 0,
      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(color: Colors.transparent),
        ),
      ),
      centerTitle: centerTitle,
      title: title != null
          ? Text(title!, style: const TextStyle(color: Colors.black))
          : null,
    );
  }
}
