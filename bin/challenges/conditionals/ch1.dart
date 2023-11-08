/*
  Write a program that asks the user for two numbers.
  Store these numbers in a variable and print them.
 */

import 'dart:io';

void main(){
  int? number_1;
  int? number_2;

  bool checkLoop = true;

  while(checkLoop){
    print('Please Input The First Number:');
    String? input1 = stdin.readLineSync();
    print('Please Inpute The Second Number:');
    String? input2 = stdin.readLineSync();

    if (input1 != null && input2 != null) {
      number_1 = int.tryParse(input1);
      number_2 = int.tryParse(input2);

      if (number_1 != null && number_2 != null) {
        checkLoop = false;
      } else {
        print('Invalid Input. Please Enter Valid Integers.');
      }
    }
    print('Number 1: $number_1');
    print('Number 2: $number_2');
  }

}