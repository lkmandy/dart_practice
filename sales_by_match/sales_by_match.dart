import 'dart:io';

int sockMerchant(int numberOfItems) {
  List<int> sockList = [];
  int counter = 0;
  print("You need to enter $numberOfItems numbers:");

  for (int i = 0; i < numberOfItems; i++) {
    int j = i + 1;

    String suffix;

    if (j == 1) {
      suffix = 'st';
    } else if (j == 2) {
      suffix = 'nd';
    } else if (j == 3) {
      suffix = 'rd';
    } else {
      suffix = 'th';
    }

    print("Enter the $j$suffix number : ");

    // Scanning the number
    int? number = int.parse(stdin.readLineSync()!);

    sockList.add(number);
  }
  print(sockList);

  for (int i = 0; i < sockList.length; i++) {

    if (sockList[i] == sockList[i+1]) {
      counter+=1;
    }
    sockList.removeAt(i);
  }
  return counter;
}

main() {
  print('Enter the number of socks in your closet');
  int? numberOfItems = int.parse(stdin.readLineSync()!);

  print(sockMerchant(numberOfItems));
}


// int sockMerchant(int numberOfItems) {
//     List<int> sockList = [];
//       int pairs = 0;

// for (int i = 0; i < numberOfItems; i++) {
//         if (!sockList.contains(c[i])) {
//             colors.add(c[i]);
//         } else {
//             pairs++;
//             colors.remove(c[i]);
//         }
//     }

// }
