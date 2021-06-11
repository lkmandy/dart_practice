class CracklePop {

  /**
   * This program prints out the numbers 1 to 100 (inclusive). 
   * If the number is divisible by 3, it prints Crackle instead of the number. 
   * If the number is divisible by 5, it prints Pop. 
   * If the number is divisible by both 3 and 5, it prints CracklePop.
   */
  void printNumbers(){
    for (int i=1; i<=100; i++){
      if ((i%3 == 0) && (i%5 == 0)){
        print("CracklePop");
      }else if(i%5 == 0){
        print("Pop");
      }else if (i%3 == 0){
        print("Crackle");
      }else{
        print(i);
      }
    }
  }
}

// Main function
void main(){
  
  // An instance of the class CracklePop
  final result = CracklePop();
  result.printNumbers();
}
