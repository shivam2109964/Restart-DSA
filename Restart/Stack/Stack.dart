class Stack<E> {
  Stack() : _storage = <E>[];
  final List<E> _storage;

  void push(E element) => _storage.add(element);
  E pop() => _storage.removeLast();

  

  @override
  String toString() {
    return '---TOP---\n'
        '${_storage.reversed.join()}'
        '\n------';
  }
}

void main(){
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  print(stack);

  stack.pop();
  print(stack);

  stack.push(6);
  stack.push(7);

  print(stack);

  stack.pop();
  print(stack);
}
