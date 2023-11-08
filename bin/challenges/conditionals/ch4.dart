/*
  Copy the code from ch3.

  After the operation is done (make sure to save the result to a variable!)
  Check if the number is odd or even, print the information for the user

  HINT: The divide operation will return a double, luckily, you can store any
        integer within a double, provided you convert the integer to a double :)
        Example:
          int testVar = 10;
          int testVarAgain = 20;
          double someVar;
          someVar = testVar.toDouble();  // <-- I converted testVar to double!
          someVar = (testVar + testVarAgain).toDouble(); // <-- Same thing!

  HINT: Create the variable outside the if conditions, then assign the result
        of the operations to it.

  HINT: You can't check if a double is even or not, but, when you convert a
        double to integer, it will simply drop it's decimal points. For example

        double someVar = 10.5;
        double someInt = someVar.toInt() // someInt will be 10, so we can
                                         // actually check if 10 is even or not.
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

  if (result % 2 == 0) {
    print('The result is an even number.');
  } else {
    print('The result is an odd number.');
  }
}