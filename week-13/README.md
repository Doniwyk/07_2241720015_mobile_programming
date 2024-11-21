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

