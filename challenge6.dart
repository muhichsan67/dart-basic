void main() {
  printData(7);
}

void printData(int totalN) async {
  for (int i = 1; i <= totalN; i++) {
    try {
      int number = await asyncPrint(i);
      print(number);
    } catch (err) {
      print(err);
    }
  }
}

Future asyncPrint(int number) {
  return Future.delayed(Duration(seconds: number), () => number);
}
