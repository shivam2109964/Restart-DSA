void main() {
  var bag = {'Candy', 'Juicy', 'Gummy'};
  bag.add('Candy');
  print(bag);

  final myList = [1,2,2,3,4];
  final mySet = <int>{};
  for(final item in myList){
    if(mySet.contains(item)){
      print(item);
    }
    mySet.add(item);
  }
  print("Set element is $mySet");
}
