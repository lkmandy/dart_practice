// Create a program that asks the user to enter their name and their age.
// Print out a message that tells how many years they have to be 100 years old.

import 'dart:io';

void numberOfYearsToOneHundred(String? name, int? age) {
  int ageToOneHundred = 100 - (age ?? 0);
  print('$name has $ageToOneHundred years to be 100 years old');
}

main() {
  print('Enter your name: ');
  final name = stdin.readLineSync();

  print('Enter your age: ');
  final age = int.tryParse(stdin.readLineSync() ?? "0");

  numberOfYearsToOneHundred(name, age);
}
