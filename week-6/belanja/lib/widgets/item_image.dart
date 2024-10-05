import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imageUrl;

  const ItemImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: imageUrl,
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}
