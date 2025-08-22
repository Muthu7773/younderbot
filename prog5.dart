void main() {
  List<int> arr = [1, 2, 2, 3, 4, 4, 5,];
  List<int> uniqueArr = [];
  for (int num in arr) {
    if (!uniqueArr.contains(num)) {
      uniqueArr.add(num);
    }
  }
  print('Array without duplicates: $uniqueArr');
}