import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/controller/favourite_controller.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({
    Key? key,
    required this.onTap,
    required this.isFavourite,
  }) : super(key: key);

  final VoidCallback onTap;
  final bool isFavourite;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: isFavourite ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
      ),
    );
  }
}
