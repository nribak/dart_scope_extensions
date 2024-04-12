Helper functions and extensions for the Dart language.

## Usage


```dart
  final s = "some value";
  final int length = s.let((value) => value.length);
  
  final String ss = s.also((value) { 
    print(value);
  });
```

## Additional information

