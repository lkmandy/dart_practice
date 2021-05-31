class Leap {
  // Put your code here
  int year;

  bool leapYear(int year){
    if ((year % 4 == 0) && (year % 400 == 0) ){
      if ((year % 10 != 0) ){
        return true;
      }
    }
    return false;
  }
}
