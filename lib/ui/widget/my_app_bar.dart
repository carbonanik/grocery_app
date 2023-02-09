import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  @override
  final Size preferredSize;

  MyAppBar( { Key? key, this.title,}) : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      title: Text(title??'', style: TextStyle(color: Colors.black)),
      leading: BackButton(
        color: Colors.black,
      ),
    );
  }
}
