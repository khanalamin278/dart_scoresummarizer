/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

/*
Practice Question 3: Score Summarizer
Consider the following list of student scores:

final scores = [88, 76, 90, 59, 93, 81, 74, 66];
Write an anonymous function using Dart’s higher-order 
functions to calculate the average score of students 
who scored above 75.
*/
export 'src/dart_anonymousfunctions_scoresummarizer_base.dart';

double averageHighScores(List<int> scores) {
  if (scores.isEmpty) {
    return 0;
  }

  final scores75 = scores.where((element) => element > 75);
  if (scores75.isEmpty) {
    return 0;
  }
  int Sum = 0;
  return scores75.fold(0, (Value, element) {
        Sum++;
        return Value + element;
      }) /
      Sum;
}
