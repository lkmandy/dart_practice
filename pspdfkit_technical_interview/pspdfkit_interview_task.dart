/// Write a function to fuzzily match the names of the people in the internship
/// hiring process.
/// Input: ai Output: [Amanda Shafack Likhene, David Schreiber-Ranner]
/// Input: o Output: [Rad Azzouz]
/// Input: ke Output: [Amanda Shafack Likhene, Kelly Benitez]

List<String> fuzzyMatch(List<String> names, String input) {
  return names.where((name) {
    bool matches = true;
    int nameIndex = 0;
    int inputIndex = 0;

    while (true) {
      if (name[nameIndex].toLowerCase() == input[inputIndex].toLowerCase()) {
        nameIndex++;
        inputIndex++;
      } else {
        nameIndex++;
      }

      if (nameIndex == name.length) {
        if (inputIndex < input.length) {
          matches = false;
        }
        break;
      }

      if (inputIndex == input.length) {
        break;
      }
    }
    return matches;
  }).toList();
}

void main() {
  List<String> names = [
    'David Schreiber-Ranner',
    'Rad Azzouz',
    'Kelly Benitez',
    'Amanda Shafack Likhene'
  ];

  String input = 'a';

  print(fuzzyMatch(names, input));
}
