
import '../dart_scope_extensions.dart';

extension ListExtensions<E extends Object> on Iterable<E> {

  E find(ScopeFunction<bool, E> predicate, [E? defaultValue]) =>
      firstWhere(
              (el) => predicate(el),
          orElse: defaultValue != null ? () => defaultValue : null
      );

  E? findOrNull(ScopeFunction<bool, E> predicate) {
    for(var el in this) {
      if(predicate(el)) {
        return el;
      }
    }
    return null;
  }
}