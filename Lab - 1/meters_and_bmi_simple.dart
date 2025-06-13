import 'dart:io';

void main() {
  // Meters to feet conversion
  print("Enter length in meters:");
  double meters = double.parse(stdin.readLineSync()!);
  double feet = meters * 3.28084;
  print("Feet: $feet");

  // BMI calculation
  print("\nEnter weight in pounds:");
  double weightPounds = double.parse(stdin.readLineSync()!);
  print("Enter height in inches:");
  double heightInches = double.parse(stdin.readLineSync()!);
  double weightKg = weightPounds * 0.45359237;
  double heightM = heightInches * 0.0254;
  double bmi = weightKg / (heightM * heightM);
  print("BMI: $bmi");
}