class Leap {
  bool leapYear(int year) {
    if ((year % 4 == 0) && (year % 400 == 0)) {
      if ((year % 10 != 0)) {
        return true;
      }
    }
    return false;
  }
}

void main() {
  Leap testYear = Leap();
  const int year = 2021;

  if (testYear.leapYear(year)) {
    print('$year is a leap year');
  } else {
    print('$year is not a leap year');
  }
}
