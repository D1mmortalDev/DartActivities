import "dart:io";
void main(){
  //BMI should display the following
  //Underweight: BMI below 18.5
  //Normal weight: BMI 18.5 and 24.9
  //Overweight: BMI between 25 and 29.9
  //Obese: BMI 30 or higher

  //declarations
  double height=0.0;
  double weight =0.0;
  double bmi =0.0;
  String? bmiCategory=" ";

  //input
  print("Enter your weight (in kg): ");
  weight = double.parse(stdin.readLineSync()!);
  print("Enter your height (in meters): ");
  height = double.parse(stdin.readLineSync()!);

  //Computations
  bmi = weight / (height*height);

  //Process If/Else condition
  if(bmi < 18.5){
  bmiCategory ="underweight";
  }else if(bmi <= 24.9){
  bmiCategory ="normal";
  }else if (bmi <= 29.9){
  bmiCategory ="overweight";
  }else if(bmi>=30){
  bmiCategory ="obese";
  }
  //Output
  print("Your BMI is ${bmi.toStringAsFixed(2)}, which is in the $bmiCategory range.");

}