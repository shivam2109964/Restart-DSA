void printMoreNames(List<String> names) {
  for (final _ in names) {
    for (final name in names) {
      print(name);
    }
  }
}

void main() {
  List<String> names = ["Car", "House", "Family"];
  printMoreNames(names);
}
