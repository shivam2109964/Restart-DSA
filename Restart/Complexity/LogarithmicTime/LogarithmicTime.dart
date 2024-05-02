bool navieContains(int value, List<int> list) {
  for (final element in list) {
    if (element == value) {
      return true;
    }
  }
  return false;
}

void main() {
  List<int> numbers = [1, 3, 56, 66, 68, 80, 99, 105, 450];
  var result = navieContains(56, numbers);
  print(result);
}
