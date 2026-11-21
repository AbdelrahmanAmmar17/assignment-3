void main() {
  List<int> numbers = [1, 2, 3, 1, 3, 6];
  CountGeneral(numbers);
}

void CountGeneral(List<int> numbers) {
numbers.sort();

int count = 1;

for (int i = 0; i < numbers.length; i++) {
  if (i < numbers.length - 1 && numbers[i] == numbers[i + 1]) {
    count++;
  } else {
    print("${numbers[i]}->$count");
    count = 1;
  }
}
}