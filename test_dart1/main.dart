import 'dart:math';

void main() {
  var r = new Random();

  var arr = new List.generate(10, (index) => r.nextInt(100));

  String result = "";

  for (var i = 0; i < 10; i++) {
    if (arr[i] % 2 == 0) {
      if (result.length == 0) {
        result = result + arr[i].toString();
      } else {
        result = result + "," + arr[i].toString();
      }
    }
  }

  print(result);
}
