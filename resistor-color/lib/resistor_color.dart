class ResistorColor {
  
  List<String> colors = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];
  
  int colorCode(String colorString){

    return colors.indexOf(colorString);

  }

}
