import 'dart:io';

void main(){
  String? inputString ="";

  stdout.write("Enter a string: ");
  inputString = stdin.readLineSync();

  var result = replaceSpaces(inputString);
  stdout.write("String with spaces replaced: $result\n");
}

replaceSpaces(input){
    var underscore ="_";
    var replaceWithUnderscore =input.replaceAll(" ",underscore);
  return replaceWithUnderscore;
}
