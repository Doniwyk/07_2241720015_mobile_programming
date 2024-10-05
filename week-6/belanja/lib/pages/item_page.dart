import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/item_image.dart';
import 'package:belanja/widgets/item_detail.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name!)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemImage(imageUrl: item.imageUrl!),
          ItemDetail(item: item),
        ],
      ),
    );
  }
}
