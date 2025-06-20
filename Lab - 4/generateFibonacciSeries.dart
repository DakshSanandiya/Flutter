import 'dart:io';

void main() 
{
  print('Enter value of n : ');
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) 
  {
    stdout.write('${fibbo(i)}, ');
  }
}

int fibbo(int n)
{
  if (n <= 1) 
  {
    return n;
  } else 
  {
    return fibbo(n - 1) + fibbo(n - 2);
  }
}
