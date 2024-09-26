void main() {
  // // Step 1
  // var list = [1, 2, 3];
  // var list2 = [0, ...list];
  // print(list);
  // print(list2);
  // print(list2.length);

  // // Step 3
  // var list1 = [1, 2, null];
  // var listNim = [2241720015];
  // print(list1);
  // var list3 = [0, ...?list1, ...listNim];
  // print(list3);
  // print(list3.length);
  
  // Step 4
  // bool promoActive = false;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // Step 5
  // var login = 'Manager'; // Define the login variable
  // var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  // print(nav2);

  // step 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
