import 'dart:io';
void main(){
  //declaration
  double height =0.0;
  double weight=0.0;
  double bmi =0.0;

  //input
  stdout.write("Enter your weight (in kg): ");
  weight = double.parse(stdin.readLineSync()!);
  stdout.write("Enter your height (in meters): ");
  height = double.parse(stdin.readLineSync()!);

  //computation
  bmi = calculateBMI(weight,height);
  stdout.write("BMI: ${bmi.toStringAsFixed(2)}");

}
calculateBMI(weight, height){
double bmi = weight / (height*height);
return bmi;
}