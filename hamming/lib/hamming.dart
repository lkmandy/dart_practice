import 'dart:io';

class Hamming {
  // Put your code here
  void distance(String strandA, String strandB){
    int hammingDistance = 0;

    if (strandA.length != strandB.length){
       hammingDistance = -1;
    }else if (strandA =='' && strandB == ''){
      hammingDistance = 0;
    }else{
      for (int i=0; i<strandA.length; i++){
        if (strandA[i] != strandB[i]){
          hammingDistance += 1;
        }
      }
    }

    if (hammingDistance == -1){
    print("The Hamming distance is only defined for DNA sequences of equal length");
    }else{
      print("The hamming distance is $hammingDistance");
    }
  }
}

// Main function
void main(){
  // An instance of the class Hamming
  final dna = Hamming();

  // Gets the user's input for the DNA sequence of cell one and handles wrong input
  print("Enter the DNA sequence for cell one. Your sequence should be made up of only letters C,A,G and T.");
  String strandOne = stdin.readLineSync();
  while(!strandOne.contains(RegExp(r'[CAGT]')) || strandOne.isEmpty){
    print("You didn't enter a valid DNA sequence!!\nEnter the DNA sequence for cell one. Your sequence should be made up of only letters C,A,G and T.");
    strandOne = stdin.readLineSync();
  }

  // Gets the user's input for the DNA sequence of cell two and handles wrong input
  print("Enter the DNA sequence for cell two. Your sequence should be made up of only letters C,A,G and T.");
  String strandTwo = stdin.readLineSync();
  while(!strandTwo.contains(RegExp(r'[CAGT]')) || strandTwo.isEmpty){
    print("You didn't enter a valid DNA sequence!!\nEnter the DNA sequence for cell two. Your sequence should be made up of only letters C,A,G and T.");
    strandTwo = stdin.readLineSync();
  }

  // Prints the hamming distance between cell one and cell two
  dna.distance(strandOne, strandTwo);
}
