import 'dart:io';

void main()
{
    print("Enter a number : ");
    int a = int.parse(stdin.readLineSync()!);

    if(a < 0)
    {
        print("$a is negative");
    }
    else if(a > 0)
    {
        print("$a is positive");
    }
    else
    {
        print("$a is zero");
    }
}

