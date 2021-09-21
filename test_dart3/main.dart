import 'dart:convert';
import 'dart:io';

void main() {
  var list = new List<int>.empty(growable: true);

  readStdin().listen((str) => {checkNumber(str, list)});
}

Stream<String> readStdin() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void checkNumber(String str, List<int> list) {
  if (str == "exit") exit(0);

  var num = int.tryParse(str);

  if (num == null) {
    print("Это не число");
  } else {
    if (num > 0)
      list.add(num);
    else
      print("Это не число");
  }

  print("Длина массива: " + list.length.toString());
}
