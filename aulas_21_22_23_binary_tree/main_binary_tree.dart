import 'binary_tree.dart';

void main() {
  BinaryTree binaryTree = BinaryTree<int>();

  binaryTree.add(10);
  binaryTree.add(8);
  binaryTree.add(5);
  binaryTree.add(9);
  binaryTree.add(7);
  binaryTree.add(18);
  binaryTree.add(13);
  binaryTree.add(20);

  print("onOrder");
  binaryTree.onOrder(binaryTree.root);

  binaryTree.remove(20);
  binaryTree.remove(5);
  binaryTree.remove(8);
  binaryTree.remove(9);
  binaryTree.remove(13); 
  binaryTree.remove(7);
  binaryTree.remove(18);
  binaryTree.remove(10);
  print("onOrder");
  binaryTree.onOrder(binaryTree.root);
  // print("preOrder");
  // binaryTree.preOrder(binaryTree.root);
  // print("postOrder");
  // binaryTree.postOrder(binaryTree.root);
}
