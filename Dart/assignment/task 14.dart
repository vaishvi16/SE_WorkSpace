void main()
{
  List fruits = ['banana', 'apple', 'orange', 'apple', 'banana', 'grapes'];

  List set = Set.from(fruits).toList();
  set.sort();

  print("Fruits in alphabetical order:");
  for (var word in set) {
    print(word);
  }
}
