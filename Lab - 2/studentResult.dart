import 'dart:io';

void main()
{
  print("Enter a 1st subject marks : ");
  int s1 = int.parse(stdin.readLineSync()!);

  print("Enter a 2nd subject marks : ");
  int s2 = int.parse(stdin.readLineSync()!);

  print("Enter a 3rd subject marks : ");
  int s3 = int.parse(stdin.readLineSync()!);

  print("Enter a 4th subject marks : ");
  int s4 = int.parse(stdin.readLineSync()!);

  print("Enter a 5th subject marks : ");
  int s5 = int.parse(stdin.readLineSync()!);

  double pr = (s1+s2+s3+s4+s5)/5;

  if (pr < 35)
  {
    print("Your class is fail");
  }
  else if(pr >35 && pr <= 45)
  {
    print("Your class is pass and percentage is $pr%");
  }
  else if(pr > 45 && pr <= 60)
  {
    print("Your class is second and percentage is $pr%");
  }
  else if(pr > 60 && pr <= 70)
  {
    print("Your class is first and percentage is $pr%");
  }
  else if (pr > 70)
  {
    print("Your class is distinction and percentage is $pr%");
  }
}