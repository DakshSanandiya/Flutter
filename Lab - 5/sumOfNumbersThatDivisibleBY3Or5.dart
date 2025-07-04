import 'dart:ffi';
import 'dart:io';

void main()
{
  List<int> li = [];
  int size;
  int sum = 0;
  print("Enter a size of List : ");
  size = int.parse(stdin.readLineSync()!);

  print("Enter List Elements:\n");

  for (int i = 0; i < size; i++) 
  {
    print("Enter Element ${i + 1}: ");
    li.add(int.parse(stdin.readLineSync()!));
  }

  for(int i = 0 ; i< size ; i++)
  {
    if(li[i] % 3 == 0 || li[i] % 5 == 0)
    {
      sum = sum + li[i];
    }
  }

  print("Sum is : $sum");
}