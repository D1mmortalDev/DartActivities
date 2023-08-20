import 'dart:io';

void main(){
  //declaration
  int inputNumber=0;
  int i=1;
  int product=0;

  //display
  print("Enter input number: ");
  inputNumber = int.parse(stdin.readLineSync()!);
  while(i <=10){
  product = inputNumber * i;
  print("$inputNumber * $i  = $product");
  i++;
  }
}