

import './aulas_03_07/generic_linked_list/linked_list.dart';

void main() {

 LinkedList linkedList = LinkedList<String>();



 linkedList.add("primeiro elemento");
 linkedList.add("Segundo elemento");
 linkedList.add("Terceiro elemento");
 print(linkedList.first?.value);
 print(linkedList.last?.value);
 print(linkedList.size);

 print(linkedList.get(0)?.value);

  linkedList.remove("primeiro elemento");
 linkedList.remove("Terceiro elemento");
 print(linkedList.first?.value);
 print(linkedList.last?.value);
 print(linkedList.size);

 print(linkedList.get(0)?.value);
}
