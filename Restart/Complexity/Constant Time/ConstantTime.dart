//This is the example of constant time

void checkFirst(List<String> names) {
  if (names.isNotEmpty) {
    print(names.first);
  } else {
    print("No Name");
  }
}

void main() {
  List<String> names = ["Shivam", "Gaurav", "Sumit"];
  checkFirst(names);
}
