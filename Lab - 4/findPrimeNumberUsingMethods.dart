import 'dart:io';


int check(int n) 
{
  for (int i = 2; i <= n/2 ; i++) 
  {
    if (n % i == 0) 
    {
      return 0;
    }
  }
  return 1;
}
void main() 
{
  print('Enter a number : ');
  int n = int.parse(stdin.readLineSync()!);
  int isPrime = check(n);
  if (isPrime == 1) 
  {
    print('$n is prime number');
  } else 
  {
    print('$n is not a prime number');
  }
}


