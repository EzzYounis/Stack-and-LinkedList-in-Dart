void main(){
  final list = Linkedlist<int>();
  list.append(1);
  list.append(2);
  list.append(3);
   list.append(2);
    list.append(3);

  print('Print Linked List:');
  list.printlist();
  print("The list is reversed");
  list.reversTheList();
  list.printlist();
  list.reversTheList(); 
  print("printing the list in reverse..");
  list.printInReverse();

  list.removeallOccurance(2);
  print("After removing accurancce");
  list.printlist();

}
class Linkedlist<T> {
  Node<T>? head;
  void append(T value){
    if (head == null){
      head = Node(value);
      return;
    }else{
      var iterate=head;
      while(iterate!.next!=null){
      iterate=iterate.next;
      }
      iterate.next=Node(value);
    }
  }
  void printlist(){
    var iterate =head;
    while (iterate != null){
      print(iterate.value);
      iterate=iterate.next;
    }
  }
  void printInReverse(){
    final stack = <T>[];
    var iterate = head;
    while (iterate!=null){
      stack.add(iterate.value);
      iterate=iterate.next;
    }
    while(stack.isNotEmpty){
      print(stack.removeLast());
    }
  }
  Node<T>? findMiddle(){ 
    // the Node called (step) goes only one step in every iterate ,
  // but the other one goes 2 steps in every iteration so when the doublestep reachs the end it 
  //the (step) node will be in the middle of the list
    var step=head;
    var doubleStep= head;
    while (doubleStep!= null && doubleStep.next != null){
      step = step?.next;
      doubleStep=doubleStep.next?.next;
    }
    return step;

  }
  void reversTheList(){
    var prev = null;
    var iterate =head;
    while (iterate!=null){
      final next = iterate.next;
      iterate.next=prev;
      prev=iterate;
      iterate=next;
    }
    head=prev;
  }
  void removeallOccurance(T value){
    while (head !=null && head!.value==value){
      head=head!.next;
    }
    var iterate=head;
    while(iterate?.next!=null){
      if(iterate!.next!.value ==value){
        iterate.next=iterate.next!.next;
      }else{
        iterate=iterate.next;
      }
    }
    return;
  }
}
class Node<T>{
  T value;
  Node<T>? next;
  Node(this.value);
}