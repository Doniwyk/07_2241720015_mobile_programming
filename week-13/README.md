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
