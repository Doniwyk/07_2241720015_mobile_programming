# #03 | Pengantar Bahasa Pemrograman Dart - Bagian 2

## Doni Wahyu Kurniawan

## TI-3H | 2241720015 | 08

## Praktikum 1: Menerapkan Control Flows ("if/else")

### P1 - Langkah 1

```dart
// Step 1
void main() {
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");
}
```

### P1 - Langkah 2

![langkah 1](/week-3/docs/1.1.png)
> Penjelasan: variabel test memiliki value "test2", jadi pada code block `else if (test == "test2") { print("Test2"); }` akan dijalankan karena syarat variabel test bernilai "test2" adalah True

### P1 - Langkah 3

```dart
  // Step 3
  String test = "true";
  if(test) {
    print("Kebenaran");
  }
```

![langkah 2](/week-3/docs/1.2.png)
> Penjelasan: error karena tipe data variable test adalah string, sedangkan code block if yang ada digunakan untuk mengecek tipe data boolean

#### Perbaikan Langkah 2

```dart
  // Step 3
  bool test = true;
  if(test) {
    print("Kebenaran");
  }
```

![perbaikan langkah 2](/week-3/docs/1.3.png)
> Penjelasan: tipe data variable test diubah menjadi boolean, sehingga code block if dapat dijalankan dengan benar

## Praktikum 2: Menerapkan Perulangan "while" dan "do-while"

### P2 - Langkah 1

```dart
void main() {
  // Step 1
  while (counter < 33) {
    print(counter);
    counter++;
  }
}

```

### P2 - Langkah 2

![P2 - langkah 1](/week-3/docs/2.1.png)
> Penjelasan: Variable counter belum di inisialisasi, sehingga terjadi error `Undefined name 'counter'`

#### Perbaikan

```dart
  // Step 1
  int counter = 0;
  while (counter < 33) {
    print(counter);
    counter++;
  }
```

![Perbaikan P2 - Langkah 1](/week-3/docs/2.2.png)
> Penjelasan: Variabel counter harus di inisialisasi terlebih dahulu, disini saya inisiasi menjadi 0, sehingga nilai 0 akan ditambah 1 setiap perulangan dilakukan

### P2 - Langkah 3

```dart
  // Step 3
  do {
    print(counter);
    counter++;
  } while (counter < 77);
```

![P2 - Langkah 3](/week-3/docs/2.3.png)
> Penjelasan: Praktikum ini merupakan kode loop menggunakan `do-while` karena kode tersebut melanjutkan (menambahkan) kode di langkah 1, maka counter akan dimulai dari angka 32. Arti loop menggunakan do-while adalah code block `do` pasti akan dilakukan setidaknya sekali dan code block `while` akan dilakukan apabila kondisi terpenuhi.

## Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"

### P3 - Langkah 1

```dart
  for (Index = 10; index < 27; index) {
    print(Index);
  }
```

### P3 - Langkah 2

![P3 - Langkah 2](/week-3/docs/3.1.png)
> Penjelasan: Error terjadi karena variable index belum diinisialisasi, kesalahannya ialah belum di jelaskan tipe data indexnya, sehingga akan terjadi error `Undefined name 'Index'`. Selain itu variable index juga tidak konsisten, terdapat index dan Index

#### Perbaikan P3 - Langkah 1

```dart
  // Step 1
  for (int index = 10; index < 27; index++) {
    print(index);
  }
```

![Perbaikan P3 - Langkah 1](/week-3/docs/3.2.png)
> Penjelasan: variable index diinisialisasikan menggunakan tipe data int, dan inkonsistensi penamaan dikonsistenkan menjadi index

### P3 - Langkah 3

```dart
  // Step 1
  for (int index = 10; index < 27; index++) {
    // Step 3
    If (Index == 21) break;
    Else If (index > 1 || index < 7) continue;
    print(index);
  }
```

![P3 - Langkah 3](/week-3/docs/3.3.png)
> Penjelasan:
>
> - inkonsistensi variable Index seharusnya index
> - block if seharusnya menggunakan if bukan If
> - if > harus dijadikan codeblock kemudian dilanjutkan dengan else if apabila ada 2 kondisi
> - else if harus menggunakan huruf kecil bubkan Else If
> - Apabila kondisi pada else if menggunakan `||` / `atau` maka kedua kondisi tersebut akan selalu bernilai true karena apabila index diinisialisasi menjadi 0 kondisi index kurang lebih dari satu akan selalu true karena index seterusnya akan lebih dari 1 dan kondisi index kurang dari 7 akan true juga sehingga variable index dari 0 hingga seterusnya akan terus di continue

#### Perbaikan P3 - Langkah 3

```dart
void main() {
  // Step 1
  for (int index = 0; index < 27; index++) {
    // Step 3
    if (index == 21) {
      break;
    } else if (index > 1 && index < 7) {
      continue;
    }
    print(index);
  }
}
```

![Perbaikan P3 - Langkah 3](/week-3/docs/3.4.png)
> Penjelasan: Pada kode tersebut nilai index diinisialisasi menjadi 0, kemudian pada perulangannya di set limit dari index tidak boleh lebih dari 27, dan setiap perulangan nilai index akan ditambah 1. Kemudian terdapat kondisi apabila index bernilai 21, maka perulangan akan di break/diberhentikan. Terdapat kondisi lain juga apabila index bernilai lebih dari 1 dan kurang dari 7 maka nilai tersebut akan di skip menggunakan continue, sehingga tidak akan di tampilkan

## Tugas

Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.

```dart
void main() {
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print('$i Doni Wahyu Kurniawan - 2241720015');
    // Jika ingin menampilkan bilangan prima saja maka hapus code block else
    } else {
      print(i);
    }
  }
}

bool isPrime(int num) {
  if (num < 2) return false;
  if (num == 2 || num == 3) return true;
  if (num % 2 == 0 || num % 3 == 0) return false;

  for (int i = 5; i * i <= num; i += 6) {
    if (num % i == 0 || num % (i + 2) == 0) {
      return false;
    }
  }

  return true;
}
```

Hasil\
![Hasil Tugas](/week-3/docs/4.png)
