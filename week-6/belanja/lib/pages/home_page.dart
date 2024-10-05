import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/item_card.dart'; // Import your ItemCard widget
import 'package:belanja/widgets/footer.dart'; // Import your Footer widget

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl:
          'https://images.heb.com/is/image/HEBGrocery/005596030-1?jpegSize=150&hei=1400&fit=constrain&qlt=75',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl: 'https://images.heb.com/is/image/HEBGrocery/002105270-1',
      stock: 20,
      rating: 4.0,
    ),
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl:
          'https://images.heb.com/is/image/HEBGrocery/005596030-1?jpegSize=150&hei=1400&fit=constrain&qlt=75',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl: 'https://images.heb.com/is/image/HEBGrocery/002105270-1',
      stock: 20,
      rating: 4.0,
    ),
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl:
          'https://images.heb.com/is/image/HEBGrocery/005596030-1?jpegSize=150&hei=1400&fit=constrain&qlt=75',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl: 'https://images.heb.com/is/image/HEBGrocery/002105270-1',
      stock: 20,
      rating: 4.0,
    ),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Item List')),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ItemCard(item: item); // Ensure you're passing the item
              },
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}