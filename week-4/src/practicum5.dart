void main() {
  // Step 1
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // Step 3
  // (int, int) tukar((int, int) record) {
  //   var (a, b) = record;
  //   return (b, a);
  // }

  // var record = (1, 2);
  // var swappedRecord = tukar(record);
  // print('Original record: $record');
  // print('Swapped record: $swappedRecord');

  // Step 4
  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa = ('Doni Wahyu', 2241720015);
  // print(mahasiswa);

  // Step 5
  var mahasiswa2 = ('first', a: 2, b: true, 'last', c: 2241720015);

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
  print(mahasiswa2.c); // Prints 2241720015
}
