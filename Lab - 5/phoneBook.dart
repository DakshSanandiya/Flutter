import 'dart:io';
import 'dart:vmservice_io';

class Phonebook
{
  String? Name;
  String? Number;

  Phonebook(this.Name,this.Number);
}
void main()
{
  bool isFound = false;
  Map<String,dynamic> phonebook = {};

  Phonebook pb1 = Phonebook("Daksh", "9638527414");
  Phonebook pb2 = Phonebook("dax", "8527419635");
  List<Phonebook> myphonebook = [];
  myphonebook.add(pb2);
  myphonebook.add(pb1);
  

  print("Enter a Name to Display his number : ");
  String name = stdin.readLineSync()!;
  
  for(Phonebook i in myphonebook)
  {
    if(i.Name == name){
      print(i.Number);
      isFound=true;
    }
  }
  if (!isFound) {
    print("User not found");
  } 
}