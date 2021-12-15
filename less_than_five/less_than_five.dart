// Take a list, say for example this one:
// a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// and write a program that prints out all the
// elements of the list that are less than 5.

void printNumbersLessThanFive(List<int> numbers) {
  List<int> safeBox = [];

  for (int i in numbers) {
    i < 5 ? safeBox.add(i) : null;
  }
  print(safeBox);
}

main() {
  final values = [1, 1, 6, 9, 4, 3, 0, 3, 5, 4, 2];
  printNumbersLessThanFive(values);
}
