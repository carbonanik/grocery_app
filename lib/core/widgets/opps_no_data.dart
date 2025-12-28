import 'package:flutter/material.dart';

class OopsNoData extends StatelessWidget {
  const OopsNoData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Oops!",
            style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold)),
        Text("No Data",
            style: TextStyle(color: Colors.grey[900], fontSize: 30, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
