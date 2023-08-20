import "dart:io";
//https://docs.google.com/document/d/1Y0H5Y2TGTg0W6f9rZoiA_E3WfkcHg4wBCQYjrPnu-xg/edit
void main(){
  //declaration
  String? product= "";
  double price=0.0;
  double discount =0.0;
  double netPrice=0.0;

  //Input
  print("Enter product:");
  product=stdin.readLineSync();
  print("Enter price:");
  price = double.parse(stdin.readLineSync()!);

  //Process
  if((price >=0) && (price <=10000)){
    discount = (price * 0.00);
  } else if(price>=10001){
    discount = (price * 0.05);
  } else if(price>=20001){
    discount = (price * 0.10);
  } else if(price>=50001){
    discount = (price * 0.15);
  } else if(price >100000){
    discount = (price * 0.20);
  }

  //Computation
  netPrice =(price - discount);
  //Output
  print("Price of $product is ${price.toStringAsFixed(2)}");
  print("Discount is  ${discount.toStringAsFixed(2)}");
  print("Net Price is ${(netPrice.toStringAsFixed(2))}");
}