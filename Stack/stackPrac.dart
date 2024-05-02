class Stack<E> {
  Stack() : _storage = <E>[];
  List<E> _storage = [];

  void push(E value) {
    _storage.add(value);
  }

  E pop() => _storage.removeLast();
  


  @override
  String toString() {
    return '----Top---- \n' 
           '${_storage}';
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);

  print(stack);

  stack.pop();
  print(stack);
}
