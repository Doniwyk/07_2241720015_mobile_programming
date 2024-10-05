import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ProductPage(),
  ));
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Strawberry Pavlova',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.black),
                      Icon(Icons.star, color: Colors.black),
                      Icon(Icons.star, color: Colors.black),
                      Icon(Icons.star, color: Colors.black),
                      Icon(Icons.star, color: Colors.black),
                      SizedBox(width: 8),
                      Text('170 Reviews'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.schedule),
                          SizedBox(height: 4),
                          Text('PREP:'),
                          Text('25 min'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.schedule),
                          SizedBox(height: 4),
                          Text('COOK:'),
                          Text('1 hr'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.restaurant),
                          SizedBox(height: 4),
                          Text('FEEDS:'),
                          Text('4-6'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.network(
              'https://img.taste.com.au/cOn4Gan6/w643-h428-cfill-q90/taste/2016/11/strawberry-pavlova-107222-1.jpeg', // Replace with the actual URL
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
