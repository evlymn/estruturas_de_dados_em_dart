import 'stack.dart';

void  main() {
  Stack stack = Stack();
  stack.add('first');
  stack.add('second');
  stack.add('third');
  stack.add('fourth');
  stack.add('fifth');
  stack.remove();
  print(stack.get()?.value);
  stack.remove();
  print(stack.get()?.value);
}
