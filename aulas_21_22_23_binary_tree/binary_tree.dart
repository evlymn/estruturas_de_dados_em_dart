import 'dart:math';

import './element.dart';

class BinaryTree<T extends Comparable> {
  late Element<T>? _root = null;

  add(T value) {
    Element<T> newElement = Element(value);
    if (_root == null) {
      _root = newElement;
    } else {
      Element<T>? current = _root;
      while (current != null) {
        if (newElement.value.compareTo(current.value) < 0) {
          if (current.left != null) {
            current = current.left;
          } else {
            current.left = newElement;
            break;
          }
        } else {
          if (current.right != null) {
            current = current.right;
          } else {
            current.right = newElement;
            break;
          }
        }
      }
    }
  }

  bool remove(T value) {
    Element<T>? current = this._root;
    Element<T>? parent = null;
    while (current != null) {
      if (current.value.compareTo(value) == 0) {
        break;
      } else if (value.compareTo(current.value) < 0) {
        parent = current;
        current = current.left;
      } else {
        parent = current;
        current = current.right;
      }
    }
    if (current != null) {
      if (current.right != null) {
        Element<T>? temp = current.right;
        Element<T>? parentTemp = current;
        while (temp?.left != null) {
          parentTemp = temp;
          temp = temp?.left;
        }
        temp?.left = current.left;
        compareCurrentParent(current, parent, temp);

        compareTempParentTemp(temp, parentTemp);
      } else if (current.left != null) {
        Element<T>? temp = current.left;
        Element<T>? parentTemp = current;
        while (temp?.right != null) {
          parentTemp = temp;
          temp = temp?.right;
        }

        compareCurrentParent(current, parent, temp);

        compareTempParentTemp(temp, parentTemp);
      } else {
        if (parent != null) {
          if (current.value.compareTo(parent.value) < 0) {
            parent.left = null;
          } else {
            parent.right = null;
          }
        } else {
          this._root = null;
        }
      }
      return true;
    } else {
      return false;
    }

    return current != null;
  }

  void compareTempParentTemp(Element<T>? temp, Element<T>? parentTemp) {
    if (parentTemp != null) {
      if (temp!.value.compareTo(parentTemp.value) < 0) {
        parentTemp.left = null;
      } else {
        parentTemp.right = null;
      }
    } else {
      this._root = temp;
    }
  }

  void compareCurrentParent(
      Element<T> current, Element<T>? parent, Element<T>? temp) {
    if (current.value.compareTo(parent?.value) < 0) {
      parent?.left = temp;
    } else {
      parent?.right = temp;
    }
  }

  void preOrder(Element<T>? element) {
    if (element != null) {
      print(element.value);
      preOrder(element.left);
      preOrder(element.right);
    }
  }

  void postOrder(Element<T>? element) {
    if (element != null) {
      postOrder(element.left);
      postOrder(element.right);
      print(element.value);
    }
  }

  void onOrder(Element<T>? element) {
    if (element != null) {
      onOrder(element.left);
      print(element.value.toString());
      onOrder(element.right);
    }
  }

  Element<T>? get root => _root;

  set root(Element<T>? value) {
    _root = value;
  }
}
