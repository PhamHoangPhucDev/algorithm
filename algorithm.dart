import 'dart:math' as math;

void main() {
  List<int> arr = [1,2,3,4,5];
  print(arr.sum - arr.max); //minimum sum
  print(arr.sum - arr.min); //maximum sum
  
  //phần tử chẵn trong mảng
  for(int i in arr) {
    if(i % 2 == 0) {
      print( '${i} là số chẵn ');
    } else {
      print( '${i} là số lẻ ');
    }
  }
}

extension IterableNum<T extends num> on Iterable<T> {
  T get max => reduce(math.max);
  T get min => reduce(math.min);
  T get sum => reduce((a, b) => a + b as T);
}