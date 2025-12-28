import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instant_grrocery_delivery/core/theme/colors.dart';
import 'package:instant_grrocery_delivery/core/util/dimension.dart';

class CartAddRemove extends StatelessWidget {
  const CartAddRemove({
    Key? key,
    required this.quantity,
    required this.onAdd,
    required this.onRemove,
  }) : super(key: key);

  final int quantity;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.w(5), vertical: context.h(5)),
      decoration: BoxDecoration(color: accentColor, borderRadius: BorderRadius.circular(5)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: onRemove,
            child: const Icon(
              Icons.remove,
              color: Colors.white,
              size: 15,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            quantity.toString(),
            style: GoogleFonts.ibmPlexMono(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: onAdd,
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 15,
            ),
          ),
        ],
      ),
    );
  }
}

