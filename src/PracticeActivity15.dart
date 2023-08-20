import 'dart:io';
void main(){
  //Declaration
  int number1=0;
  int number2=0;
  int number3=0;
  bool isPythagorean =false;
  int sumOfTwoNumbers=0;
  int productOfThirdNumber=0;

  //Inputs
  print("Enter number 1: ");
  number1 = int.parse(stdin.readLineSync()!);
  print("Enter number 2: ");
  number2 = int.parse(stdin.readLineSync()!);
  print("Enter number 3: ");
  number3 = int.parse(stdin.readLineSync()!);

  /*Computation for Pythagorean Triples
  (a * a) + (b * b) = (c * c)
   sum of a and b should be equal to C*/

  sumOfTwoNumbers = (number1 * number1) + (number2 *number2);
  productOfThirdNumber = (number3 *number3);

  //Process and display - checking if equal to each other
  isPythagorean = sumOfTwoNumbers == productOfThirdNumber;
  if(isPythagorean){
  print("These numbers form a Pythagorean triple.");
  }else{
  print("These numbers do not form a Pythagorean triple.");
  }
}