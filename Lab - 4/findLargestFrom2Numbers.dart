import 'dart:io';


int findLargestFromTwoNumbers(int a , int b)
{
 return a>b?a:b;
}
int findLargestFromTwoNumbersUsingDefaultParameter([int a=10 , int b=15])
{
 return a>b?a:b;
}

void main()
{
  print("Enter first number : ");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter second number : ");
  int b = int.parse(stdin.readLineSync()!);
  
  int ans = findLargestFromTwoNumbers(a, b);
  int ans2 = findLargestFromTwoNumbersUsingDefaultParameter();

  print("largest number is : $ans");
  print("largest number using default parameter is : $ans2");
}