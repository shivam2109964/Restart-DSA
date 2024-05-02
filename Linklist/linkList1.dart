class Node<T> {
  T value;
  Node<T>? next;

  Node({required this.value, this.next});

  @override
  String toString() {
    if (next == null) return '${value}';
    return '${value} -> ${next.toString()}';
  }
}

class Linklist<E> {
  Node<E>? head;
  Node<E>? tail;

  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  bool get isEmpty => head == null;

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
  String toString() {
    if (isEmpty) return 'Empty List';
    return '${head.toString()}';
  }
}

void main() {
  Linklist linklist = Linklist();
  linklist.push(1);
  linklist.push(2);
  linklist.push(3);
  linklist.push(4);
  linklist.push(5);

  print(linklist);
  print("");

  linklist.insertAfteer(linklist.atNode(2)!, 33);
  print(linklist);
}
