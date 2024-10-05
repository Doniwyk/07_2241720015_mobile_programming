import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemDetail extends StatelessWidget {
  final Item item;

  const ItemDetail({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.name!,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text('Harga: Rp${item.price}'),
          Text('Stok: ${item.stock}'),
          Text('Rating: ${item.rating}'),
        ],
      ),
    );
  }
}
