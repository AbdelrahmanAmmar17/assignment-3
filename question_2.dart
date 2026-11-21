void main() {
  List<int> numbers = [1, 9, 0, 5, 4, 2];
  int result = getSecondSmallest(numbers);
  print(result);
}

int getSecondSmallest(List<int> numbers) {
int smallest = numbers[0];
int secondSmallest = numbers[1];

for (int i = 0; i < numbers.length; i++) {
  if (numbers[i] < smallest) {
    secondSmallest = smallest;
    smallest = numbers[i];
  } else if (numbers[i] < secondSmallest && numbers[i] != smallest) {
    secondSmallest = numbers[i];
  }
}

return secondSmallest;
}