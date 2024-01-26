class QuizQuestion {
  QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); //buat copy of answers list
    shuffledList.shuffle();
    return shuffledList;
  }
}
