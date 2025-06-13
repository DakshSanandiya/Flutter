import 'dart:io';

void main ()
{
  int ans = 1;
  print("Etner a number : ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1 ; i <= n ; i++)
  {
    ans = ans * i;
  }
  if(n == 0)
  {
    print("Ans is 1");
  }else
  {
    print("Ans is $ans");
  }  
}