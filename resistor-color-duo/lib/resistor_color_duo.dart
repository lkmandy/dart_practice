import 'dart:io';
import 'dart:core';


class ResistorColorDuo {

  ResistorColorDuo();
  // Put your code here
  List<String> colors = ['Black', 'Brown', 'Red',' Orange', 'Yellow', 'Green', 'Blue', 'Violet', 'Grey', 'White'];
  
 int value(List<String> colorInput){
   colorInput = stdin.readLineSync();
  
    int colorOne = colors.indexOf(colorInput[0]);
    int colorTwo = colors.indexOf(colorInput[1]);

    return int.parse('{$colorOne$colorTwo}');
  }
}
