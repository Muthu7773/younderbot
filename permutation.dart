void main() {
  List<int> nums = [1, 1, 2];
  nums.sort();
  int n = nums.length;
  List<int> perm = List.from(nums);
  bool nextPermutation(List<int> arr) {
    int i = arr.length - 2;
    while (i >= 0 && arr[i] >= arr[i + 1]) i--;
    if (i < 0) return false;
    int j = arr.length - 1;
    while (arr[j] <= arr[i]) j--;
    int tmp = arr[i]; arr[i] = arr[j]; arr[j] = tmp;
    arr.setRange(i + 1, arr.length, arr.sublist(i + 1, arr.length).reversed);
    return true;
  }
  print(perm);
  while (nextPermutation(perm)) {
    print(perm);
  }
}