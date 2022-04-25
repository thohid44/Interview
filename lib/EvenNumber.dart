class EvenNumber {
  List a = [1, 4, 9, 16, 25, 36, 49, 81, 100];
  List even = [];
  List newList = [];

  void evenNumber() {
    for (final i in a) {
      if (i.isEven) {
        even.add(i);
      }
    }
    newList.addAll(even);

    print(newList);
  }
}
