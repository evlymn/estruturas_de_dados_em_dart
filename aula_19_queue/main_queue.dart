import 'Queue.dart';

void main() {

  Queue queue = Queue();

  queue.add('first');
  queue.add('second');
  queue.add('third');
  queue.add('fourth');
  queue.add('fifth');
  queue.remove();
  print(queue.first?.value);
}
