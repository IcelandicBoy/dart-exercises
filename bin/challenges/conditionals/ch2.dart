/*
  Write a program that asks the user to input a number between 0 and 4.

  Then, based on what the user inputs, print the following

  0 -> print 'add'
  1 -> print 'subtract'
  2 -> print 'multiply'
  3 -> print 'divide'
  4 -> print 'modulo'

 */
import 'dart:io';

void main() {
  print('Please Input A Number Between 0 And 4:');
  String input = stdin.readLineSync() ?? '';
  int userInput = int.tryParse(input) ?? -1;

  switch (userInput) {
    case 0:
      print('add');
      break;
    case 1:
      print('subtract');
      break;
    case 2:
      print('multiply');
      break;
    case 3:
      print('divide');
      break;
    case 4:
      print('modulo');
      break;
    default:
      print('Invalid Input. Please Enter A Number between 0 and 4.');
      break;
  }

}