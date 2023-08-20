import 'dart:io';

void main() {
  //declaration
  int number1 = 0;
  int number2 = 0;
  int number3 = 0;

  //Inputs
  print("Enter number 1: ");
  number1 = int.parse(stdin.readLineSync()!);
  print("Enter number 2: ");
  number2 = int.parse(stdin.readLineSync()!);
  print("Enter number 3: ");
  number3 = int.parse(stdin.readLineSync()!);

  //Process -Check the smallest in the 3 numbers
  if (number1 < number2 && number1 < number3) {
    print("The smallest number is $number1");
  } else if (number2 < number3) {
    print("The smallest number is $number2");
  } else {
    print("The smallest number is $number3");
  }
}