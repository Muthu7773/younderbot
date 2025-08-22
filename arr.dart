bool hasSubsetSum(List<int> arr, int sum) {
  int n = arr.length;
  for (int i = 0; i < (1 << n); i++) {
    int subsetSum = 0;
    for (int j = 0; j < n; j++) {
      if ((i & (1 << j)) != 0) {
        subsetSum += arr[j];
      }
    }
    if (subsetSum == sum) return true;
  }
  return false;
}

void main() {
  List<int> arr = [3, 34, 4, 12, 5, 2];
  int sum = 9;
  bool result = hasSubsetSum(arr, sum);
  print('Is there a subset with sum $sum? $result');
}