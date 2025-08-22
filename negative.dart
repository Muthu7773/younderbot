void main() {
  List<int> numbers = [3, -1, 7, -5, 0, -2, 8];
  int negativeCount = 0;

  for (int num in numbers) {
    if (num < 0) {
      negativeCount++;
    }
  }

  print('Number of negative numbers: $negativeCount');
}