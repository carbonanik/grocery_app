import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

class AddRemoveButton extends StatelessWidget {
  const AddRemoveButton({
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
      padding: EdgeInsets.symmetric(horizontal: Dimension.width(15), vertical: Dimension.height(10)),
      decoration: BoxDecoration(color: accentColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: onRemove,
            child: const Icon(
              Icons.remove,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            '$quantity',
            style: GoogleFonts.ibmPlexMono(
              fontWeight: FontWeight.w500,
              fontSize: 18,
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
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
