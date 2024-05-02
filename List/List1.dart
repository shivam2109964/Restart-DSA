void main() {
  final storedata = [0, 1, 2, 3];

  storedata.insert(0, 2);
  storedata.removeAt(0);
  print(storedata);

  List<int> fixedLength = List.filled(5, 1);

  print(fixedLength);
}
