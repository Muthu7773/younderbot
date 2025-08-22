void main(){
  int arr[] = {7, 18, 45, -6, 19, -1, 0};
  int count = 0;

  print("Negative numbers in the array:");
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] < 0) {
      count = arr[i];
      print(count);
    }
  }
}