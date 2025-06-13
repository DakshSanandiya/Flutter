import 'dart:io';

void main()
{
  print("Enter a 1st number : ");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter a 2nd number : ");
  int b = int.parse(stdin.readLineSync()!);

  print("Enter a 3rd number : ");
  int c = int.parse(stdin.readLineSync()!);

  if(a > b)
  {
    if(a > c)
    {
      print("$a is largest");
    }
    else
    {
      print("$c is largest");
    }
  }
  else
  {
    if(b > c)
    {
      print("$b is largest");
    }
    else
    {
      print("$c is largest");
    }
  }  
}