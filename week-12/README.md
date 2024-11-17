# #11 | Pemrograman Asynchronous

## Doni Wahyu Kurniawan

## TI-3H | 2241720015 | 08

## Praktikum 1: Mengunduh Data dari Web Service (API)

![praktikum_1](./docs/praktikum_1.gif)\

**SOAL 3** - Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!

> - substring(0, 450):
>
>   Metode substring digunakan untuk mengambil sebagian teks dari sebuah string. Dalam hal ini, value.body.toString().substring(0, 450) berarti bahwa hanya 450 karakter pertama dari hasil respon data (yang telah diubah menjadi string) yang akan ditampilkan. Hal ini berguna jika data yang dikembalikan cukup besar, sehingga kita hanya ingin menampilkan sebagian kecil data tersebut untuk ditampilkan di layar.
>
> - .catchError((_) { ... }):
>
>   Bagian .catchError((_) { ... }) digunakan untuk menangani kemungkinan kesalahan yang terjadi selama pemanggilan fungsi getData(). Jika terjadi error saat mengambil data (misalnya, koneksi internet terputus, server tidak merespons, atau ada masalah lainnya), blok catchError akan dijalankan. Dalam blok ini, nilai result diatur menjadi 'An error occurred' untuk memberi tahu pengguna bahwa terjadi kesalahan. Blok setState(() {}) dipanggil untuk memperbarui antarmuka pengguna agar perubahan ditampilkan.

## Praktikum 2: Menggunakan await/async untuk menghindari callbacks

![praktikum_1](./docs/praktikum_2.gif)\

**SOAL 4** - Jelaskan maksud kode langkah 1 dan 2 tersebut!

> - Langkah 1:
>
>   Ketiga method (returnOneAsync, returnTwoAsync, returnThreeAsync) adalah method asynchronous yang masing-masing menunda eksekusi selama 3 detik menggunakan await Future.delayed(const Duration(seconds: 3));. Setelah penundaan, masing-masing method mengembalikan nilai 1, 2, dan 3. Method-method ini digunakan untuk mensimulasikan proses yang memakan waktu, seperti pengambilan data dari server atau operasi asinkron lainnya.
>
> - Langkah 2:
>
>   Method count() digunakan untuk memanggil ketiga method asynchronous tersebut secara berurutan dan menjumlahkan hasilnya. Method ini menunggu hingga returnOneAsync, returnTwoAsync, dan returnThreeAsync selesai dieksekusi (masing-masing dengan penundaan 3 detik), dan mengembalikan total dari ketiga nilai tersebut. Jumlah total yang dihasilkan adalah 1 + 2 + 3, yaitu 6.

## Praktikum 3: Menggunakan Completer di Future

![praktikum_3](./docs/praktikum_3.gif)\

**Soal 5** - Jelaskan maksud kode langkah 2 tersebut!
> Langkah 2 bertujuan untuk membuat proses asinkron yang menghasilkan Future dengan nilai 42 setelah 5 detik. Completer digunakan untuk mengendalikan kapan Future tersebut selesai. Method getNumber() mengembalikan Future, dan calculate() menyelesaikannya dengan nilai 42 setelah penundaan 5 detik.

**Soal 6** - Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!
>
> - Langkah 2 hanya menangani kasus di mana operasi berjalan dengan sukses dan tidak memiliki mekanisme untuk menangani error.
>
> - Langkah 5-6 menambahkan penanganan error di kedua bagian, yaitu di calculate() dan di onPressed(). Ini membuat aplikasi lebih tangguh karena dapat menangani kondisi error dan memberikan feedback kepada pengguna ketika terjadi kesalahan.

## Praktikum 4: Memanggil Future secara paralel

![praktikum_4](./docs/praktikum_4.gif)\