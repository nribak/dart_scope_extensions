
import '../dart_scope_extensions.dart';

extension ScopeExtensions<T extends Object> on T {

  R let<R>(ScopeFunction<R, T> block) => block(this);

  T also(ScopeFunction<void, T> block) {
    block(this);
    return this;
  }

  T? takeIf(ScopeFunction<bool, T> predicate) =>
      predicate(this) ? this : null;

  T? takeUnless(ScopeFunction<bool, T> predicate) =>
      !predicate(this) ? this : null;
}