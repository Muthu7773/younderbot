void main() {
  int number = 641108;
  int sum = 0;
  while (number > 0) {
    sum += number % 10;
    number ~/= 10;
  }
  print('Sum of all digits: $sum');
}