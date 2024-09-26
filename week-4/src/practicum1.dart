void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  final List<String?> list = List.filled(5, null);
  list[1] = 'Doni Wahyu Kurniawan';
  list[2] = '2241720015';

  assert(list.length == 5);
  assert(list[1] == 'Doni Wahyu Kurniawan');
  assert(list[2] == '2241720015');
  print(list.length);
  print(list[1]);
  print(list[2]);
}
