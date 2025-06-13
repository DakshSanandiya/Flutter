import 'dart:io';

void main() {
  print("Enter Any Positive Number : ");
  int n = int.parse(stdin.readLineSync()!);
  int c = 0;

  for (int i = 2; i <= (n / 2); i++) {
    if (n % i == 0) {
      c++;
    }
  }

  if (c == 0) {
    print("$n Is Prime Number ");
  } else {
    print("$n Is Not A Prime Number");
  }
}
