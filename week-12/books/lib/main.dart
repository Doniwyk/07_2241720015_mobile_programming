import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:async/async.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  String bookData = '';
  bool isLoading = false; // Variable to track loading state
  late Completer<int> completer; // Late variable for Completer

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Open Library Books - Doni'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              child: const Text('GO!'),
              onPressed: () {
                returnFG(); // Memanggil method returnFG() untuk menjalankan semua Future
              },
            ),
            const Spacer(),
            if (isLoading)
              const CircularProgressIndicator(), // Show loading indicator when isLoading is true
            if (!isLoading) Text(result), // Show result only when not loading
            const Spacer(),
            Text(bookData),
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future<int> count() async {
    int one = await returnOneAsync();
    int two = await returnTwoAsync();
    int three = await returnThreeAsync();
    return one + two + three;
  }

  Future<Response> getData() async {
    const authority = 'openlibrary.org';
    const path = '/api/books';
    const queryParams = {
      'bibkeys': 'ISBN:0451526538',
      'format': 'json',
      'jscmd': 'data'
    };
    Uri url = Uri.https(authority, path, queryParams);
    return http.get(url);
  }

  Future<int> getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  Future<void> calculate() async {
    try {
      await Future.delayed(const Duration(seconds: 5));
      completer.complete(42); // Menyelesaikan Future dengan nilai 42
    } catch (_) {
      completer.completeError(
          {}); // Menyelesaikan Future dengan error jika terjadi masalah
    }
  }

  // Method baru yang ditambahkan
  void returnFG() {
    FutureGroup<int> futureGroup = FutureGroup<int>();
    futureGroup.add(returnOneAsync());
    futureGroup.add(returnTwoAsync());
    futureGroup.add(returnThreeAsync());
    futureGroup.close();

    setState(() {
      isLoading =
          true; // Mengatur loading state menjadi true saat Future dijalankan
    });

    futureGroup.future.then((List<int> value) {
      int total = 0;
      for (var element in value) {
        total += element;
      }
      setState(() {
        result = total.toString(); // Menampilkan total hasil penjumlahan di UI
        isLoading = false; // Menghentikan loading state setelah hasil diperoleh
      });
    }).catchError((_) {
      setState(() {
        result = 'An error occurred'; // Menampilkan pesan error
        isLoading = false; // Menghentikan loading state jika terjadi error
      });
    });
  }
}
