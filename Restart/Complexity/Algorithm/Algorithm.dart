int sumFormOneTO(int n) {
  var sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

void main() {
  final start = DateTime.now();
  var result = sumFormOneTO(10000);
  final end = DateTime.now();
  final time = end.difference(start);
  print(result); 
  print("Time is $time");
}
