import "dart:ffi";
import "dart:io";
//https://docs.google.com/document/d/1Y0H5Y2TGTg0W6f9rZoiA_E3WfkcHg4wBCQYjrPnu-xg/edit
void main(){
  //declaration
  double fare=0.0;
  String? passengerType=' ';
  String?  businessClass=' ';
  bool isBusinessClass= false;
  double discount=0.0;
  double classCharge=0.0;
  double newFare=0.0;


  //input
  print("Enter fare:");
  fare = double.parse(stdin.readLineSync()!);
  print("PassengerType [O,S,C]");
  passengerType=stdin.readLineSync();
  print("Travelling in Business class?:");
  businessClass= stdin.readLineSync();

  //Process
  if(businessClass == 'Y'){
  isBusinessClass =true;
  }else if(businessClass == 'N'){
  isBusinessClass =false;
  }

  if (passengerType=='O' && isBusinessClass){
  discount = fare * 0.00;
  classCharge =1000.00;
  newFare = fare - (discount - classCharge);
  }else if (passengerType=='S' && isBusinessClass){
  discount = fare * 0.05;
  classCharge =600.00;
  newFare = fare - (discount - classCharge);
  }else if(passengerType=='C' && isBusinessClass){
  discount = fare * 0.10;
  classCharge=500.0;
  newFare = fare - (discount - classCharge);
  }else if (passengerType=='O' && !isBusinessClass) {
  discount = fare * 0.00;
  newFare = fare -discount;
  }else if (passengerType=='S' && !isBusinessClass){
  discount = fare * 0.05;
  newFare = fare -discount;
  }else if (passengerType=='C' && !isBusinessClass) {
  discount = fare * 0.10;
  newFare = fare -discount;
  }

  //Output
  print("Discount is: ${discount.toStringAsFixed(2)}");
  print("Business charge is: ${classCharge.toStringAsFixed(2)}");
  print("New Fare is: ${newFare.toStringAsFixed(2)}");

}