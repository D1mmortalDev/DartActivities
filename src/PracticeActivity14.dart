import 'dart:io';

void main() {
  //declare
  int year = 0;
  bool isLeapYear = true;

  //input
  print("Enter a year: ");
  year = int.parse(stdin.readLineSync()!);

  //Process
  if (year % 4 == 0) {
    isLeapYear = year % 100 != 0 || year % 400 == 0;
  } else {
    isLeapYear = false;
  }
  if (isLeapYear) {
    print("$year is a leap year.");
  } else {
    print("$year is not a leap year.");
  }
}