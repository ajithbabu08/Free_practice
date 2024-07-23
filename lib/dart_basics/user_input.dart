import 'dart:io';

void main(){
  print("enter name:");
  print("enter age");
  print("enter address");
  String? name= stdin.readLineSync();
  int? age=int.parse(stdin.readLineSync()!);
  String? address=stdin.readLineSync();
  print("the name is ${name}");
  print("the age is ${age}");
  print("the address is ${address}");
}