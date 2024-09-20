void main() {
  // Step 1
  for (int index = 0; index < 27; index++) {
    // Step 3
    if (index == 21) {
      break;
    } else if (index > 1 && index < 7) {
      continue;
    }
    print(index);
  }
}
