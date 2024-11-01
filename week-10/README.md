# #09 | Kamera

## Doni Wahyu Kurniawan

## TI-3H | 2241720015 | 08

## Praktikum 1: Mengambil Foto dengan Kamera di Flutter

![camera_test](./docs/camera.gif)

## Praktikum 2: Membuat photo filter carousel

![carousel_test](./docs/carousel.gif)

## Tugas Praktikum

1. Selesaikan Praktikum 1 dan 2
    > done
2. Gabungkan hasil praktikum 1 dengan hasil praktikum 2 sehingga setelah melakukan pengambilan foto, dapat dibuat filter carouselnya!
    > terdapat pada projek `photo_and_filter`, berikut hasilnya
    > ![photo_and_filter](./docs/camrea_filter.gif)
    pada intinya perubahan yang dilakukan adalah sebagai berikut
    * takepicture_screen.

        ```dart
        onPressed: () async {
            try {
            await _initializeControllerFuture;
            final image = await _controller.takePicture();

            if (!context.mounted) return;

            await Navigator.of(context).push(
                MaterialPageRoute(
                builder: (context) => PhotoFilterCarousel(
                    imagePath: image.path,
                ),
                ),
            );
            } catch (e) {
            print(e);
            }
        },
        ```

    * filter_carousel.dart

        ```dart
        Widget _buildPhotoWithFilter() {
            return ValueListenableBuilder(
            valueListenable: _filterColor,
            builder: (context, color, child) {
                return Image.file(
                File(widget.imagePath),
                color: color.withOpacity(0.5),
                colorBlendMode: BlendMode.color,
                fit: BoxFit.cover,
                );
            },
            );
        }
        ```

3. Jelaskan maksud void async pada praktikum 1?
    > * **Future< void >**\
    >     Fungsi ini mengembalikan sebuah Future yang tidak mengembalikan nilai (void). Future digunakan dalam Dart untuk menjalankan operasi asinkron (operasi yang membutuhkan waktu untuk diselesaikan). Dengan mendeklarasikan fungsi main sebagai Future, kita memberi tahu Dart bahwa fungsi ini akan melakukan operasi asinkron yang mungkin belum selesai pada saat fungsi ini dipanggil.
    > * **async**\
    >     Kata kunci async memberitahu Dart bahwa fungsi ini berisi operasi asinkron yang akan dijalankan secara non-blok (tidak menghentikan eksekusi program di titik tersebut). Dalam fungsi ini, operasi asinkron, seperti await availableCameras(), dapat dijalankan tanpa menghentikan program. Kata await menandakan bahwa eksekusi akan "menunggu" hingga operasi tersebut selesai, tetapi tidak memblokir alur program secara keseluruhan.

4. Jelaskan fungsi dari anotasi @immutable dan @override ?
    > * **@Immutable**\
    >   @immutable adalah anotasi yang menandakan bahwa sebuah kelas bersifat immutable (tidak dapat diubah) setelah objeknya dibuat. Digunakan ketika sebuah kelas diberi anotasi @immutable, seluruh field (variabel anggota) dari kelas tersebut harus berupa final. Artinya, begitu objek dibuat, nilai dari field-fieldnya tidak dapat diubah lagi.
    > * **@override**\
    >   @override adalah anotasi yang menunjukkan bahwa sebuah metode dalam suatu kelas menimpa (mengganti implementasi) metode dengan nama yang sama dari kelas induk atau antarmuka yang diimplementasikan. Digunakan untuk memberikan implementasi spesifik dari sebuah metode yang sudah ada di superclass. Anotasi ini membantu meningkatkan keterbacaan kode dan memastikan bahwa metode benar-benar menimpa metode dari superclass.
