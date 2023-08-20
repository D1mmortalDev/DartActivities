import "dart:io";

void main(){
  int i=1;
  int rows=5;
  while(i <=rows){
  //inner loop
  int j=1;
  while(j <=i){
    stdout.write(j);
  j++;
  }
  print('');
  i++;
  }
}