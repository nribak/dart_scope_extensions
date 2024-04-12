import 'package:dart_extensions/dart_extensions.dart';

String? generateValue(String v) {
  return v.takeIf((value) => DateTime.now().millisecondsSinceEpoch % 2 == 0);
}

void main() {
  final v = generateValue('abc');
  print(v);
}
