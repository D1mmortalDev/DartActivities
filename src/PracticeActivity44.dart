import 'dart:io';
void main(){
  //Declaration
  double celsius=0.0;
  double result=0.0;

  //Input
  stdout.write("Temperature (Celsius): ");
  celsius = double.parse(stdin.readLineSync()!);

  //Calculation
  result = convertTemperature(celsius);

  //Output
  print("Temperature (Fahrenheit): $result");
}
convertTemperature(celsius){
  var fahrenheit = (celsius * 9/5) + 32;
  return fahrenheit;
}