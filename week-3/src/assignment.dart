// Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.
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
