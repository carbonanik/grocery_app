import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    Key? key,
    required this.onTap,
    required this.isFavorite,
  }) : super(key: key);

  final VoidCallback onTap;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: isFavorite
          ? const Icon(Icons.favorite)
          : const Icon(Icons.favorite_border),
    );
  }
}
