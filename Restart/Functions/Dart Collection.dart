import 'dart:collection';

void main() {
  final score = {'Eric': 9, 'Mark': 2, 'Wayne': 1};
  score['Andrew'] = 0;
  print(score);

  final hasMap = HashMap.of(score);
  print(hasMap);
}
