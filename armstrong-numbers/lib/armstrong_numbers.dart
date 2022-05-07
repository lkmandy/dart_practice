import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    List<String> numberString = number.toString().split('');
    List<int> numberList = [];
    num digit = 0;

    for (int i = 0; i < numberString.length; i++) {
      numberList.add(int.parse(numberString[i]));
      digit += pow(numberList[i], numberString.length);
    }

    bool result = digit == number ? true : false;

    return result;
  }
}
