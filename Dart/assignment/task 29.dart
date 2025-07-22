void main() {
  List numbers = [10, 20, 10, 50, 30, 20, 40, 50, 30];

  List set = Set.from(numbers).toList();
  set.sort();

  print(set);
}
