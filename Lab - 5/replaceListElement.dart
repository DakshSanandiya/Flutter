import 'dart:io';

void main()
{
  List<String> li = ["Delhi", "Mumbai", "Bangalore", "Hyderabad","Ahmedabad"];
  
  print("Before Replace :\n");
  for (String i in li) {
    print(i);
  }

  li.replaceRange(4, 5, ["Surat"]);
  print("\nAfter Replace :\n");
  for (String i in li) {
    print(i);
  }
}