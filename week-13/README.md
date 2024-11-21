# #12 | Lanjutan State Management dengan Streams

## Doni Wahyu Kurniawan

## TI-3H | 2241720015 | 08

## Praktikum 1: Dart Streams

**SOAL 3** - Jelaskan fungsi keyword yield* pada kode tersebut! Apa maksud isi perintah kode tersebut?

> - Fungsi yield*
>
>   yield* digunakan untuk melimpahkan elemen dari stream lain ke stream yang sedang dibuat. Dalam kode tersebut, yield* Stream.periodic(...) meneruskan elemen yang dihasilkan oleh Stream.periodic langsung ke stream getColors.
>
> - Maksud Kode
>
>   1. Stream.periodic: Membuat stream yang memancarkan nilai setiap 1 detik.
>   2. t % colors.length: Mengambil indeks warna dari daftar colors, berulang dari awal saat mencapai akhir.
>   3. yield*: Meneruskan warna dari Stream.periodic ke stream getColors.

![praktikum_1](./docs/P1.gif)\

**Soal 5** - Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !
>
> - await for:
>   - Membaca stream secara sinkron dalam bentuk perulangan.
>   - Membutuhkan fungsi async.
>   - Cocok untuk pengolahan data terstruktur dan satu listener.
>
> - listen:
>
>   - Mendengarkan stream secara asinkron dengan callback.
>   - Tidak memerlukan fungsi async.
>   - Lebih fleksibel untuk menangani banyak listener atau proses real-time.

## Praktikum 2: Stream Controllers dan Sinks

**Soal 6** - Jelaskan maksud kode langkah 8 dan 10 tersebut!

> - Langkah 8: Edit initState()
>   - Inisialisasi NumberStream dan StreamController.
>   - Mendengarkan data baru dari stream menggunakan stream.listen.
>   - Setiap angka baru yang diterima memperbarui variabel lastNumber dengan setState, sehingga UI diperbarui secara real-time.
>
> - Langkah 10: Tambah addRandomNumber()
>
>   - Menghasilkan angka acak menggunakan Random.
>   - Menambahkan angka acak tersebut ke stream melalui metode addNumberToSink. Angka ini diteruskan ke listener untuk memperbarui UI.

![praktikum_2](./docs/P2.gif)\

**Soal 7** - Jelaskan maksud kode langkah 13 sampai 15 tersebut!
>
> - Langkah 13
>
>   - Fungsi addError() menambahkan error ke stream menggunakan controller.sink.addError('error').
>   - Error ini akan diteruskan ke listener yang mendengarkan stream.
>
> - Langkah 14
>
>   - Menambahkan handler onError ke stream.listen di initState.
>   - Jika stream menerima error, UI akan diperbarui (setState) dengan menampilkan nilai default (contoh: -1).
>
> - Langkah 15
>
>   - Dua baris untuk menghasilkan dan menambahkan angka ke stream dikomentari.
>   - Sebagai gantinya, fungsi addError() dipanggil untuk mengirimkan error ke stream.

![praktikum_2](./docs/P2.1.gif)\

## Praktikum 3: Injeksi Data ke Streams

**Soal 8** - Jelaskan maksud kode langkah 1-3 tersebut!

> - Langkah 1: Deklarasi transformer sebagai StreamTransformer untuk memodifikasi data di stream.
> - Langkah 2:
>   - handleData: Memodifikasi data (mengalikan nilai dengan 10).
>   - handleError: Mengganti error dengan nilai -1.
>   - handleDone: Menutup stream saat selesai.
> - Langkah 3:
>   - Menerapkan transformer ke stream dengan stream.transform(transformer).
>   - Mendengarkan data hasil transformasi dan memperbarui UI.
>   - Menangani error dengan memperbarui UI menggunakan nilai -1.

![praktikum_3](./docs/P3.gif)\

## Praktikum 4: Subscribe ke stream events

**Soal 9** - Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!

> - Langkah 2: Menyiapkan listener untuk memperbarui data secara real-time.
> - Langkah 6: Menghentikan listener di dispose() untuk mencegah kebocoran memori.
> - Langkah 8: Menghindari error dengan memverifikasi apakah stream masih terbuka sebelum menambahkan angka baru.

![praktikum_4](./docs/P4.gif)\
![praktikum_4](./docs/onDone.png)\
