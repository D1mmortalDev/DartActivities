import "dart:io";
void main(){
  //declaration
  String? name="";
  String? gradeStatus="";
  double physicsGrade=0.0;
  double algebraGrade=0.0;
  double programmingGrade=0.0;
  double average=0.0;

  //input
  print("Enter name:");
  name = stdin.readLineSync();
  print("Enter grade in Physics:");
  physicsGrade = double.parse(stdin.readLineSync()!);
  print("Enter grade in Algebra: ");
  algebraGrade = double.parse(stdin.readLineSync()!);
  print("Enter grade in Programming: ");
  programmingGrade = double.parse(stdin.readLineSync()!);

  //computation
  average= (physicsGrade + algebraGrade + programmingGrade) / 3;

  //Process
  if(average >100){
  gradeStatus ="Invalid Grade";
  }else if(average >=95) {
  gradeStatus = "President lister";
  }else if(average >=94){
  gradeStatus ="Dean lister";
  }else if(average >=88){
  gradeStatus ="Average Student";
  }else if(average >=82){
  gradeStatus ="Fair";
  }   else if(average <78){
  gradeStatus = "Failure";
  }

  if(gradeStatus == "Invalid Grade"){
  print(gradeStatus);
  }
  else{
  print("$name average grade is ${average.toStringAsPrecision(2)}");
  print(gradeStatus);
  }
}