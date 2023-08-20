import 'dart:io';
void main(){
  List<double> numList=[0.0];
  double numbers =0.0;
  double average =0.0;
  int ctr=1;
  int i=0;

  while(i<5){
  stdout.write("Enter number $ctr: ");
  numbers = double.parse(stdin.readLineSync()!);
  numList.add(numbers);
  ctr++;
  i++;
  }
  average = computeAverage(numList);
  stdout.write("Average: ${average.toStringAsFixed(2)}");
}
computeAverage(List<double>numbers) {
  double average=0;
  for (double number in numbers){
    average+=number;
  }
return average/5;
}