import 'dart:io';

void main() {
  print("Enter marks for 5 subjects:");
  double sub1 = double.parse(stdin.readLineSync()!);
  double sub2 = double.parse(stdin.readLineSync()!);
  double sub3 = double.parse(stdin.readLineSync()!);
  double sub4 = double.parse(stdin.readLineSync()!);
  double sub5 = double.parse(stdin.readLineSync()!);
  double total = sub1 + sub2 + sub3 + sub4 + sub5;
  double percentage = total / 5;
  print("Percentage: $percentage%");
}