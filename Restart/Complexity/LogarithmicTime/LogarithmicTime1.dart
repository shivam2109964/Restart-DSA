bool betterNaiveContains(int value, List<int> list) {
  if (list.isEmpty) return false;

  final middleIndex = list.length ~/ 2;
  if (value > list[middleIndex]) {
    for (var i = middleIndex; i < list.length; i++) {
      if (list[i] == value) return true;
    }
  } else {
    for (var i = middleIndex; i >= 0; i--) {
      if(list[i] == value) return true;
    }
  }
  return false;
}

void main(){
  List<int> list = [1, 3, 56, 66, 68, 80, 99, 105, 450];
  var result = betterNaiveContains(450, list);
  print(result);
}