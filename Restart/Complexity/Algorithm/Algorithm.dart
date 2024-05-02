//Implementing a method to show how much it take time

int sumFormOneTO(int n) {
  var sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

//One more implementation
int betterSumFromOneTo(int n) {
  return n * (n + 1) ~/ 2;
}

void main() {
  final start = DateTime.now();
  //var result = sumFormOneTO(10000);
  var result1 = betterSumFromOneTo(10000);
  final end = DateTime.now();
  final time = end.difference(start);
  //print(result);
  print(result1);
  print("Time is $time");
}
