import 'package:dart_scope_extensions/dart_scope_extensions.dart';

String? generateValue(String v) {
  return v.takeIf((value) => DateTime.now().millisecondsSinceEpoch % 2 == 0);
}

void main() {
  final s = "some value";
  final int length = s.let((value) => value.length);

  final String ss = s.also((value) {
    print(value);
  });
}
