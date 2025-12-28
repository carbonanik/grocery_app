import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class SideTabItem extends StatelessWidget {
//   const SideTabItem({Key? key, required this.text}) : super(key: key);
//   final String text;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//       child: Text(
//         text,
//         style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

class DrawTriangleShape extends BoxPainter {
  DrawTriangleShape(this.color);

  final Color color;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    var path = Path();

    double scale = 1.0;
    double width = configuration.size?.width ?? 0;

    path.moveTo((width / 2) + offset.dx, configuration.size!.height / 3);
    path.lineTo(width / 2 + 20 + offset.dx, 0);
    path.lineTo(width / 2 - 20 + offset.dx, 0);
    path.close();

    Paint painter = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..isAntiAlias = true;

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class TriangleTabIndicator extends Decoration {
  final BoxPainter _painter;

  TriangleTabIndicator({required Color color})
      : _painter = DrawTriangleShape(color);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}
