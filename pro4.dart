void main(){
 int largestUnique(List<int> input) {
	 Map<int, int> freq = {};
	 for (var num in input) {
		 freq[num] = (freq[num] ?? 0) + 1;
	 }
	 List<int> uniques = freq.keys.where((k) => freq[k] == 1).toList();
	 if (uniques.isEmpty) return -1; // or throw exception if preferred
	 return uniques.reduce((a, b) => a > b ? a : b);
 }

	 List<int> input = [10, 9, 3, 4, 5, 7, 13];
	 int result = largestUnique(input);
	 print('Largest unique number: $result');
}