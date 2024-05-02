class Stack<E> {
  Stack() : _storage = <E>[];
  List<E> _storage;

  void push(E element) {
    _storage.add(element);
  }

  E pop() => _storage.removeLast();

  E get peek => _storage.last;

  bool get isEmpty => _storage.isEmpty;

  bool get isNotEmpty => !isEmpty;

  //Creating a stack form an Iterable
  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);

  @override
  String toString() {
    return '----Top----\n'
        '${_storage}\n'
        '___________\n';
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push("Shivam");
  stack.push(2);
  stack.push(3.3);
  stack.push(4);
  stack.push(5);
  stack.push("Gupta");

  print(stack);

  const list = ['S', 'M', 'O', 'K', 'E'];
  final smokeStack = Stack.of(list);
  print(smokeStack);
  smokeStack.pop();
  print(smokeStack);
}
