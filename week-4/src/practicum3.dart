void main() {
  // Step 1
  var gifts = {
    // key: value
    'first': 'partridge',
    'second': 'turtledoves',
    'third': 1
  };

  var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

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
}
