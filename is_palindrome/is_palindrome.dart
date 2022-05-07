// Ask the user for a string and print out whether this string is a palindrome
// or not. A palindrome is a string that reads the same forwards and backwards.

import 'dart:io';

isPalindrome() {
  stdout.write("Enter a word: ");
  String input = stdin.readLineSync()!.toLowerCase();
  String revInput = input.split('').reversed.join('');

  input == revInput
      ? print("The word is palindrome")
      : print("The word is not a palindrome");
}

void main() {
  isPalindrome();
}
