import 'dart:convert';
import 'dart:io';

void main() {
  readStdin().listen((str) => {checkNumber(str)});
}

Stream<String> readStdin() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void checkNumber(String str) {
  var num = int.tryParse(str);
  if (num == null) {
    print("Это не число");
  } else {
    if (num > 0)
      print(num);
    else
      print("Это не число");
  }
}
