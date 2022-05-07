import 'package:ila/ila.dart' as ila;

void main(List<String> arguments) {
  print('\nAdd Result: ${ila.calculateAdd().toString()}\n');
  print('Subtract Result: ${ila.calculateSubtract().toString()}\n');
  print('Divide Result: ${ila.calculateDivide().toString()}\n');
  print('Multiply Result: ${ila.calculateMultiply().toString()}\n');

  try {
    print('Hello world: ${ila.calculate()}!\n'
        'Args sum: ${arguments.fold<int>(0, (previousValue, element) => previousValue + int.parse(element))}\n');
  } catch (e) {
    print('Error: Make sure at least one argument is not an integer');
  }
}
