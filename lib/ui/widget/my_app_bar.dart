import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  @override
  final Size preferredSize;

  const MyAppBar( { Key? key, this.title,}) : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      title: Text(title??'', style: const TextStyle(color: Colors.black)),
      leading: const BackButton(
        color: Colors.black,
      ),
      actions: [TextButton(onPressed: (){} , child: const Text('View Cart', style: TextStyle(color: Colors.black)))],
    );
  }
}
