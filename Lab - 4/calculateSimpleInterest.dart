import 'dart:io';

double interest(double p,double r,double n)
{
  return ((p*r*n)/100);
}
double interestUsingDefaultParameter([double p=1000,double r=20,double n=600])
{
  return ((p*r*n)/100);
}

void main()
{
  print("Enter a Value of P : ");
  double p = double.parse(stdin.readLineSync()!);

  print("Enter a Value of R : ");
  double r = double.parse(stdin.readLineSync()!);
  
  print("Enter a Value of N : ");
  double n = double.parse(stdin.readLineSync()!);

  double ans = interest(p, r, n); 
  double ans2 = interestUsingDefaultParameter(n=900,r=28);
  print("interest is : $ans");
  print("interest Using Default Parameter is : $ans2");
}