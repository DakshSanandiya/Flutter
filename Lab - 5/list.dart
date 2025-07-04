import 'dart:io';

void main() {
  List<int> li = [];
  int temp;

  print("Enter 5 numbers one by one:\n");

  for (int i = 0; i < 5; i++) {
    print("Enter number ${i + 1}: ");
    int? input = int.parse(stdin.readLineSync()!);
    if (input != null) {
      li.add(input);
    } else {
      print("Invalid input.");
      return;
    }
  }

  for (int i = 0; i < li.length - 1; i++) {
    for (int j = 0; j < li.length - i - 1; j++) {
      if (li[j] > li[j + 1]) {
        temp = li[j];
        li[j] = li[j + 1];
        li[j + 1] = temp;
      }
    }
  }

  print("\nYour List in Increasing Order:");
  for (int i in li) {
    print(i);
  }
}
