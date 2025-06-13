import 'dart:io';

void main()
{
  print("Enter a first number : ");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter a second number : ");
  int b = int.parse(stdin.readLineSync()!);

  print("Enter a opretor (+,-,*,/): ");
  String op = stdin.readLineSync()!;

  if(op == '+')
  {
    print("$a + $b = ${a+b}");
  }
  else if(op == '*')
  {
    print("$a * $b = ${a*b}");
  }
  else if(op == '-')
  {
    print("$a - $b = ${a-b}");
  }
  else if(op == '/')
  {
    print("$a / $b = ${a/b}");
  }
}