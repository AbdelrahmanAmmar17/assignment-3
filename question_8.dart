void main() {
  List<int> numbers = [1, 2, 3, 2, 1, 6, 3, 4, 5, 2];
  getDistinctNumbers(numbers);
}

void getDistinctNumbers(List<int> numbers) {
int count = 0;
String distinct = "";

for (int i = 0; i < numbers.length; i++) {
  bool isDuplicate = false;

  for (int j = 0; j < i; j++) {
    if (numbers[i] == numbers[j]) {
      isDuplicate = true;
      break;
    }
  }

  if (!isDuplicate) {
    count++;
    distinct = "$distinct ${numbers[i]}";
  }
}

print("The number of distinct number is $count");
print("The distinct numbers are:$distinct");
}