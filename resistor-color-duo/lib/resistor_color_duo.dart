
class ResistorColorDuo {
  
  List<String> colors = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];
  
  int value(List<String> colorInput){
    int result = (colors.indexOf(colorInput[0])*10) + colors.indexOf(colorInput[1]);
    return result;
  }
}
