# #03 | Aplikasi Pertama dan Widget Dasar Flutter

## Doni Wahyu Kurniawan

## TI-3H | 2241720015 | 08

## Praktikum 1: Membuat Project Flutter Baru

![Membuat project baru](../week-5/docs/1.1.png)

## Praktikum 2: Menghubungkan Perangkat Android atau Emulator

![Menghubungkan Perangkat Android](../week-5/docs/2.1.png)\
![Menghubungkan Perangkat Android](../week-5/docs/2.2.jpeg)

## Praktikum 3: Membuat Repository Github dan Laporan Praktikum

![Menghubungkan Perangkat Android](../week-5/docs/3.1.png)

## Praktikum 4: Menerapkan Widget

### Langkah 1 - Text Widget

![Menghubungkan Perangkat Android](../week-5/docs/4.1.png)

### Langkah 2 - Image Widget

![Menghubungkan Perangkat Android](../week-5/docs/4.2.png)

## Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino

### Langkah 1 - Cupertino Button dan Loading Bar

```dart
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        margin: const EdgeInsets.only(top: 30),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            CupertinoButton(
              child: const Text("Contoh button"),
              onPressed: () {
                // Add your onPressed code here
              },
            ),
            const CupertinoActivityIndicator(),
          ],
        ),
      ),
    );
  }
}
```

### Langkah 2 - Floating Action Button (FAB)

```dart
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}
```

### Langkah 3 - Scaffold WidgetBar

![Scaffold WidgetBar](../week-5/docs/4.3.2.gif)

### Langkah 4 - Dialog Widget

![Dialog Widget](../week-5/docs/4.4.2.gif)

### Langkah 5 - Input dan Selection Widget

![Input dan Selection Widget](../week-5/docs/4.5.2.gif)

### Langkah 6 - Date and Time Pickers

![Date and Time Pickers](../week-5/docs/4.6.2.gif)

## FLUTTER FIRST APP

1. Create a Project\
  ![First app 1](../week-5/docs/5.1.png)
2. Add a button\
  ![First app 2](../week-5/docs/5.2.gif)
3. Make thing prettier\
  ![First app 3](../week-5/docs/5.3.gif)
4. Add Functionality\
  ![First app 4](../week-5/docs/5.4.gif)
5. Add Navigation Rail\
  ![First app 5](../week-5/docs/5.5.gif)
6. Add New Page\
  ![First app 6](../week-5/docs/5.6.gif)
