import 'dart:io';

void main(){
  int i =5;
  while(i >=1){
  //inner loop
  int j =1;
  while(j <=i){
    stdout.write('*');

  j++;
  }
  print('');
  i--;
  }
}