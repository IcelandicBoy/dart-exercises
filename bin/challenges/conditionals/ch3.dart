/*
  Copy the code from ch1 and ch2 so that you have a program that asks for two
  numbers, then an operation.

  Then, based on what the user inputs, calculate the results using the chosen
  math operator.

  0 -> print nbr1 + nbr2 = results
  1 -> etc
  2 -> etc
  3 -> etc
  4 -> etc

 */
import 'dart:io';

void main() {
  print('Enter The First Number:');
  String input1 = stdin.readLineSync() ?? '';
  double number1 = double.tryParse(input1) ?? 0.0;

  print('Enter the Second Number:');
  String input2 = stdin.readLineSync() ?? '';
  double number2 = double.tryParse(input2) ?? 0.0;

  print('Choose an operation (add, subtract, multiply, divide,modulo):');
  String operation = stdin.readLineSync() ?? '';

  double result = 0.0;

  switch (operation) {
    case 'add':
      result = number1 + number2;
      break;
    case 'subtract':
      result = number1 - number2;
      break;
    case 'multiply':
      result = number1 * number2;
      break;
    case 'divide':
      if (number2 != 0) {
        result = number1 / number2;
      } else {
        print('Division by Zero is not allowed.');
      }
      break;
    case 'modulo':
      if (number2 != 0) {
        result = number1 % number2;
      } else {
        print('Modulo by Zero is not allowed.');
        return;
      }
      break;
    default:
      print('Invalid operation. Please choose from add, subtract, multiply, divide, or modulo.');
      return;
  }
  print('Result: $result');
}