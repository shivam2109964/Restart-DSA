class Node<T> {
  T value;
  Node<T>? next;

  Node({required this.value, this.next});

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> extends Iterable<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  //Adding a value
  void push(E value) {
    head = Node(value: value, next: head);
    tail ?? head;
  }

  //Popping from the front of the list
  E? pop() {
    final value = head!.value;
    head = head!.next;
    if (isEmpty) {
      tail == null;
    }
    return value;
  }

  //Removing form the last
  E? removeLast() {
    //1
    if (head?.next == null) return pop();
    //2
    var current = head;
    while (current!.next != tail) {
      current = current.next;
    }
    //3
    final value = tail?.value;
    tail = current;
    tail?.next = null;
    return value;
  }

  //Removing value form the middle of the list
  E? removeAfter(Node<E> node) {
    final value = node.next?.value;
    if (node.next == tail) {
      tail = node;
    }
    node.next = node.next?.next;
    return value;
  }

  void append(E value) {
    //1
    if (isEmpty) {
      push(value);
      return;
    }

    //2
    tail!.next = Node(value: value);

    //3
    tail = tail!.next;
  }

  Node<E>? atNode(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

  Node<E> insertAfteer(Node<E> node, E value) {
    //1
    if (tail == null) {
      append(value);
      return tail!;
    }

    //2
    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  @override
  Iterator<E> get iterator => _LinkedListIterable(this);

  @override
  String toString() {
    if (isEmpty) return 'Empty List';
    return head.toString();
  }
}

class _LinkedListIterable<E> implements Iterator<E> {
  _LinkedListIterable(LinkedList<E> list) : _list = list;
  final LinkedList<E> _list;

  Node<E>? _currentNode;

  @override
  E get current => _currentNode!.value;

  bool _firstPass = true;

  @override
  bool moveNext() {
    //1
    if (_list.isEmpty) return false;
    //2
    if (_firstPass) {
      _currentNode = _list.head;
      _firstPass = false;
    } else {
      _currentNode = _currentNode?.next;
    }
    //3
    return _currentNode != null;
  }
}

void main() {
  final node1 = Node(value: 1);
  final node2 = Node(value: 2);
  final node3 = Node(value: 3);
  final node4 = Node(value: 4);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;

  print(node1);
  print("");
  final linkelist = LinkedList<int>();
  linkelist.head = node1;
  linkelist.tail = node4;

  if (linkelist.head != null) {
    print("Try to print entire linklist ${linkelist.head.toString()}");
    print("Head of the linked list: ${linkelist.head!.value}");
    print("The tail of the linked list: ${linkelist.tail!.value}");
  } else {
    print("Linked list is empty");
  }

  print("");
  print("Adding value though push (head-first insertion)");
  linkelist.push(22);
  print("${linkelist.head.toString()}");
  print("");

  //popping value
  linkelist.pop();
  print(linkelist.head.toString());

  //remove from last
  linkelist.removeLast();
  print(linkelist.head.toString());

  //Remove from the middle of the list
  linkelist.removeAfter(linkelist.atNode(0)!);
  print(linkelist.head.toString());
  print("");
  for (final element in linkelist) {
    print(element);
  }
}
