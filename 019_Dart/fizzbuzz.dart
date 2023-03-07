// This is a comment.

bool isFizz(int i) {
  return (i % 3 == 0);
}

bool isBuzz(int i) {
  return (i % 5 == 0);
}

String fizzbuzz(int i) {
  if (isFizz(i) && isBuzz(i)) {
    return "FizzBuzz";
  } else if (isFizz(i)) {
    return "Fizz";
  } else if (isBuzz(i)) {
    return "Buzz";
  } else {
    return i.toString();
  }
}

void main() {
  for (var i = 1; i <= 100; ++i) {
    final result = fizzbuzz(i);
    print(result);
  }
}
