# #03 | Pengantar Bahasa Pemrograman Dart - Bagian 3

## Doni Wahyu Kurniawan

## TI-3H | 2241720015 | 08

## Praktikum 1: Eksperimen Tipe Data List

### P1 - Langkah 1

```dart
void main() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}
```

### P1 - Langkah 2

![P2 - Langkah 1](/week-4/docs/1.1.png)

### P1 - Langkah 3

Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2.

```dart
void main() {
  final List<String?> list = List.filled(5, null);
  list[1] = 'Doni Wahyu Kurniawan';
  list[2] = '2241720015';

  assert(list.length == 5);
  assert(list[1] == 'Doni Wahyu Kurniawan');
  assert(list[2] == '2241720015');
  print(list.length);
  print(list[1]);
  print(list[2]);
  print(list[3]);
}
```

Hasil\
![Hasil P1 - Langkah 3](/week-4/docs/1.2.png)

## Praktikum 2: Eksperimen Tipe Data Set

### P2 - Langkah 1

```dart
    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
    print(halogens);
```

### P2 - Langkah 2

![Hasil P2 - Langkah1](/week-4/docs/2.1.png)
> Penjelasan: Pada code tersebut dibuat sebuah set pada variable bernama halogens. Ketika halogens di print, semua value akan ditampilkan beserta dengan kurung kurawalnya

### P2 - Langkah 3

```dart
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);
```

Hasil\
![Hasil P3 - Langkah 3](/week-4/docs/2.2.png)

> Penjelasan: Pada praktikum tersebut terdapat 2 cara inisialisasi set dan 1 cara untuk inisialisasi map

Perubahan code: Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll()

```dart
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {};

  names1.add('Doni Wahyu Kurniawan');
  names1.add('2241720015');

  names2.addAll(['Doni Wahyu Kurniawan', '2241720015']);
  print(names1);
  print(names2);
}
```

Hasil\
![Hasil Perubahan Kode L3](/week-4//docs/2.3.png)

## Praktikum 3: Eksperimen Tipe Data Maps

### P3 - Langkah 1

```dart
void main() {
  var gifts = {
    // key: value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2
  };

  print(gifts);
  print(nobleGases);
}
```

### P3 - Langkah 2

![Hasil P3 - Langkah 1](/week-4/docs/3.1.png)
> Penjelasan: Map adalah struktur data yang memungkinkan untuk menyipan pasangan `key-value`. Contohnya pada map gifts terdapat `key first` yang memiliki `value partridge`. Sebuah map bisa memetakan key ke value yang berbeda tipe datanya secara langsung, contohnya pada map gifts juga terdapat `key fifth` yang memiliki `value 1`.

### P3 - Langkah 3

```dart
  // Step 3
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
```

> Penjelasan: Pada penambahan kode diatas hanya terjadi perubahan value pada map gifts dan nobleGases. map mhs1 dan mhs2 sama sekali tidak digunakan hanya diinisialisasi. Berikut cara penggunaannya.

Penambahan elemen nama dan nim pada tiap variable

```dart
  // Step 3
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['third'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  gifts['fourth'] = 'Doni Wahyu Kurniawan';
  gifts['fifth'] = '2241720015';
  nobleGases[19] = 'Doni Wahyu Kurniawan';
  nobleGases[20] = '2241720015';
  mhs1['name'] = 'Doni Wahyu Kurniawan';
  mhs1['nim'] = '2241720015';
  mhs2[1] = 'Doni Wahyu Kurniawan';
  mhs2[2] = '2241720015';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
```

Hasil\
![Hasil Perubahan](/week-4/docs/3.2.png)

## Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators

### P4 - Langkah 1

```dart
void main() {
  // Step 1
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);
}
```

### P4 - Langkah 2

![Hasil P4 - Langkah 1](/week-4/docs/4.1.png)
> Penjelasan: Terdapat inisialisasi 2 list bernama list dan list2. list berisi elemen 1, 2, dan 3. list2 menggunakan `spread operator (...)`, operator ini digunakan untuk memasukkan semua elemen dari list lain (dalam hal ini, `list`) ke dalam list baru `list2`. Sehingga list2 berisi elemen 0, 1, 2, 3.

### P4 - Langkah 3

```dart
  // Step 3
  list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);
```

Hasil\
![Hasil P4 - Langkah 3](/week-4/docs/4.2.png)
> Penjelasan: Error terjadi karena list satu belum di dideklarasi tipe inferencenya. Kode akan benar apabila list1 ditambah tipe inferencenya seperti var

```dart
  // Step 3
  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);
```

Hasil\
![Hasil Perbaikan](/week-4/docs/4.3.png)

Menambahkan List NIM\
![Hasil Menambahkan list NIM](/week-4/docs/4.4.png)

### P4 - Langkah 4

```dart
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
```

Hasil\
![Hasil P4 - Langkah 4](/week-4/docs/4.5.png)

Perbaikan nilai `true`

```dart
bool promoActive = true;
```

![Hasil P4 - Langkah 4-true](/week-4/docs/4.6.png)

Perbaikan nilai `false`

```dart
bool promoActive = false;
```

![Hasil P4 - Langkah 4-false](/week-4/docs/4.7.png)

### P4 - Langkah 5

```dart
var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
print(nav2);
```

Hasil\
![Hasil P4 - Langkah 5](/week-4/docs/4.8.png)

Perbaikan

```dart
  var login = 'Manager'; // Define the login variable
  var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav2);
```

![Perbaikan P-4 Langkah 5](/week-4/docs/4.9.png)

### P4 - Langkah 6

```dart
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
```

Hasil\
![Hasil P4 - Langkah 6](/week-4/docs/4.10.png)

**Jelaskan manfaat Collection For dan dokumentasikan hasilnya.**
Collection For memungkinkan untuk memasukkan loop for langsung di dalam sebuah koleksi guna menghasilkan item-item secara dinamis berdasarkan koleksi atau perhitungan tertentu. Manfaat utama dari fitur ini meliputi:

* Lebih ringkas dan bersih
* Pengurangan BoilerPlate
* Fleksibilitas
* Pembacaan yang lebih mudah

Penjelasan:

* `listOfInts`: Sebuah list yang berisi angka-angka `[1, 2, 3]`.
* `listOfStrings`: List ini dimulai dengan elemen pertama `'#0'`. Setelah itu, menggunakan fitur `Collection For`, list ini diisi dengan string yang dibuat dari setiap elemen di `listOfInts` dengan format `'#i'`. Hasil akhirnya menjadi: `['#0', '#1', '#2', '#3']`.
* `assert`: Mengecek apakah elemen di indeks ke-1 dari `listOfStrings` adalah `'#1'`.
* `print`: Mencetak hasil akhir list `['#0', '#1', '#2', '#3']`.

### P5 - Langkah 1

```dart
  var record = ('first', a: 2, b: true, 'last');
  print(record);
```

### P5 - Langkah 2

![P5 - Langkah 2](/week-4/docs/5.1.png)

### P5 - Langkah 3

```dart
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
```

Hasil\
![Hasil P5 - Langkah 3](/week-4/docs/5.2.png)

Penggunaan Function

```dart
  // Step 3
  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  var record = (1, 2);
  var swappedRecord = tukar(record);
  print('Original record: $record');
  print('Swapped record: $swappedRecord');
```

Hasil\
![Penggunaan fungsi swap](/week-4/docs/5.3.png)

### P5 - Langkah 4

```dart
// Record type annotation in a variable declaration:
(String, int) mahasiswa;
print(mahasiswa);
```

Hasil\
![P5 - Langkah 4](/week-4/docs/5.4.png)

Perbaikan

```dart
  (String, int) mahasiswa = ('Doni Wahyu', 2241720015);
  print(mahasiswa);
```

Hasil\
![Perbaikan P5 - Langkah 4](/week-4/docs/5.5.png)

### P5 - Langkah 5

```dart
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
```

Hasil\
![P5 - Langkah 5](/week-4/docs/5.6.png)

Menambah NIM

```dart
  var mahasiswa2 = ('first', a: 2, b: true, 'last', c: 2241720015);

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
  print(mahasiswa2.c); // Prints 2241720015
```

Hasil\
![Menambah NIM](/week-4/docs/5.7.png)

## Tugas

1. Jelaskan yang dimaksud Functions dalam bahasa Dart!
    > unction adalah blok kode yang dapat dipanggil berkali-kali untuk menjalankan perintah tertentu. Fungsi biasanya memiliki nama, parameter (opsional), dan bisa mengembalikan nilai (opsional). Fungsi membantu mengelola kode agar lebih terstruktur, modular, dan menghindari duplikasi.
    > Contoh:
    >
    > ```dart
    > void greet() {
    >  print('Hello, World!');
    > }
    > ```

2. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
    > * **Positional Parameters**: Parameter yang diurutkan sesuai posisinya ketika fungsi dipanggil. Semua parameter positional bersifat wajib.\
    > Contoh:
    >
    >   ```dart
    >   void greet(String name) {
    >     print('Hello, $name!');
    >   }
    >   greet('Alice'); // Output: Hello, Alice!
    >   ```
    >
    > * **Optional Positional Parameters**: Parameter yang bisa tidak diisi saat fungsi dipanggil. Ditandai dengan tanda kurung siku.\
    > Contoh:
    >
    >   ```dart
    >   void greet([String name = 'Guest']) {
    >     print('Hello, $name!');
    >   }
    >   greet(); // Output: Hello, Guest!
    >   ```
    >
    > * **Named Parameters**: Parameter yang dipanggil berdasarkan namanya, bukan posisinya. Bisa bersifat wajib atau opsional. Ditandai dengan kurung kurawal.\
    > Contoh:
    >
    >   ```dart
    >   void greet({required String name}) {
    >     print('Hello, $name!');
    >   }
    >   greet(name: 'Alice'); // Output: Hello, Alice!
    >   ```
    >
    > * **Optional Named Parameters**: arameter yang tidak wajib diisi dan bisa memiliki nilai default.\
    > Contoh:
    >
    >   ```dart
    >   void greet({String name = 'Guest'}) {
    >     print('Hello, $name!');
    >   }
    >   greet(); // Output: Hello, Guest!
    >   ```
    >
3. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
    > Dalam Dart, fungsi adalah first-class objects, yang berarti fungsi dapat disimpan dalam variabel, dikembalikan dari fungsi lain, atau diteruskan sebagai argumen ke fungsi lain.\
    > Contoh:
    >
    > ```dart
    >void printMessage() {
    >  print('This is a message');
    >}
    >
    >void executeFunction(void Function() fn) {
    >  fn();
    >}
    >
    >void main() {
    >  var fn = printMessage;
    >  executeFunction(fn); // Output: This is a message
    >}
    > ```
    >
4. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
    > Anonymous function, atau fungsi tanpa nama, adalah fungsi yang didefinisikan langsung tanpa menggunakan identifier (nama). Fungsi ini sering digunakan dalam konteks di mana fungsi hanya digunakan sekali atau sebagai callback.
    >
    > ```dart
    > var multiply = (int a, int b) {
    >   return a * b;
    > };
    >
    > void main() {
    >   print(multiply(3, 4)); // Output: 12
    > }
    > ```
    >
    > atau digunakan sebagai callback
    >
    > ```dart
    > var numbers = [1, 2, 3];
    > numbers.forEach((number) {
    >   print(number);
    > });
    > ```
    >
5. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
    > * **Lexical Scope** adalah konsep di mana fungsi "melihat" variabel berdasarkan di mana fungsi tersebut didefinisikan (bukan di mana ia dipanggil). Setiap fungsi dapat mengakses variabel di lingkup tempat ia didefinisikan. Contoh:
    >
    >   ```dart
    >   int x = 10;
    >   void printX() {
    >     print(x); // Mengakses x dari lingkup luar
    >   }
    >   ```
    >
    > * Lexical Closures adalah fungsi yang "menutup" lingkup tempat ia didefinisikan, sehingga fungsi dapat mengakses variabel dari lingkup luar meskipun fungsi tersebut telah dipindahkan atau dipanggil di luar lingkup aslinya. Contoh:
    >
    >   ```dart
    >   Function makeAdder(int addBy) {
    >     return (int i) => i + addBy;
    >   }
    >
    >   void main() {
    >     var addTwo = makeAdder(2);
    >     print(addTwo(3)); // Output: 5
    >   }
    >   ```
    >
    >   Fungsi makeAdder mengembalikan fungsi anonim yang "menutup" lingkup variabel addBy, sehingga saat addTwo dipanggil, ia masih bisa mengakses addBy yang bernilai 2.

6. Jelaskan dengan contoh cara membuat return multiple value di Functions!
    > Dart tidak secara langsung mendukung pengembalian beberapa nilai, tetapi kita bisa mengembalikan beberapa nilai dengan menggunakan struktur data seperti list, map, atau tuple-like objects (seperti menggunakan class atau record).
    > Contoh dengan list:
    >
    > ```dart
    > List<int> getCoordinates() {
    >   return [10, 20];
    > }
    >
    > void main() {
    >   var coords = getCoordinates();
    >   print('x: ${coords[0]}, y: ${coords[1]}'); // Output: x: 10, y: 20
    > }
    > ```
    >
    > Contoh dengan map:
    >
    > ```dart
    > Map<String, int> getCoordinates() {
    >   return {'x': 10, 'y': 20};
    > }
    >
    > void main() {
    >   var coords = getCoordinates();
    >   print('x: ${coords['x']}, y: ${coords['y']}'); // Output: x: 10, y: 20
    > }
    > ```
