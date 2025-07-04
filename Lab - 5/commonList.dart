import 'dart:io';

void main() {
  List<int> li1 = [];
  List<int> li2 = [];
  List<int> commonli = [];
  int size;

  print("Enter a size of List : ");
  size = int.parse(stdin.readLineSync()!);

  print("Enter First List Elements:\n");

  for (int i = 0; i < size; i++) 
  {
    print("Enter Element ${i + 1}: ");
    li1.add(int.parse(stdin.readLineSync()!));
  }
  print("Enter second List Elements:\n");

  for (int i = 0; i < size; i++)
  {
    print("Enter Element ${i + 1}: ");
    li2.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < size; i++) 
  {
    for (int j = 0; j < size; j++) 
    {
      if (li1[i] == li2[j]) 
      {
        commonli.add(li1[i]);
      }
    }
  }

  if (commonli.isEmpty) 
  {
    print("No Common Element Between Two List");
  } else 
  {
    print("Your Common LIst is : \n");
    for (int i in commonli) 
    {
      print(i);
    }
  }
}
