import 'dart:io';

void main()
{
   print("Enter a 1st number : ");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter a 2nd number : ");
  int b = int.parse(stdin.readLineSync()!);

  print("Enter a 3rd number : ");
  int c = int.parse(stdin.readLineSync()!);

  int max = (a > b)?((a > c)?a:c):((b > c)?b:c);

  print("$max is largest");
}