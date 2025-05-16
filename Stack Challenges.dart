void main(){
final list =[1,2,3,4];
print("Reversing the list");
printReversed(list);
// Demo for balance parentheses
print("Demo For Balance The Parenttheses");
print(parenthesesBalance("())"));
print(parenthesesBalance("(())"));

}
void printReversed<T>(List<T> list){
  final stack=<T>[];
  for(final item in list){
    stack.add(item);
  }
  while(stack.isNotEmpty){
    print(stack.removeLast());
  }
}
bool parenthesesBalance(String input){
  final stack=<String>[];
  for(final char in input.split('')){
    if(char == '('){
      stack.add(char);
    }else if(char == ')'){
      if(stack.isEmpty){
        return false;
      }
      stack.removeLast();
    }
  }
  return true;

}