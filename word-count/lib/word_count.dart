class WordCount {
  // Put your code here

  Map<String, int> countWords(String sentence) {
    List<String> phrases = sentence.split(' ');
    

    Map<String, int> phraseCount = {for (var phrase in phrases) $phrase: $phrases.};
    return phraseCount;
  }
}
