abstract class UseCase<T, P> {
  /// The call() method allows an instance of any class
  /// that defines it to emulate a function.
  /// See: https://dart.dev/language/callable-objects
  Future<T> call(final P params);
}

class NoParams {}
