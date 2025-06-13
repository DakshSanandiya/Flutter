import 'dart:io';

void main()
{
   print("Enter a first number : ");
  double a = double.parse(stdin.readLineSync()!);

  print("Enter a second number : ");
  double b = double.parse(stdin.readLineSync()!);

  print("Enter a opretor (+,-,*,/): ");
  String op = stdin.readLineSync()!;

  double? ans ;
  switch (op)
  {
    case '+': ans = a + b;
    break;

    case '-': ans = a - b;
    break;

    case '*': ans = a * b;
    break;

    case '/': ans = a / b;
    break;
  }
  print("ans is : $ans");
}