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

void printReverseNode(Node? head) {
  List<Node> stack = [];

  //Traverse the linked list and push all nodes to stack
  Node? current = head;
  while (current != null) {
    stack.add(current);
    current = current.next;
  }
  //Pop nodes form stack to print in reverse order

  while (stack.isNotEmpty) {
    Node node = stack.removeLast();

    print(node.value);
  }
}

void printReverse(Node? head) {
  if (head == null) return;

  printReverse(head.next);

  print(head.value);
}

void main() {
  final node1 = Node(value: 1);
  final node2 = Node(value: 2);
  final node3 = Node(value: 3);

  node1.next = node2;
  node2.next = node3;
  node3.next = null;

  print(node1.toString());
  print("");
  printReverseNode(node1);
  print("___________");
  printReverse(node1);
}
