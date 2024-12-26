abstract class DataState<T> {
  const DataState(this.data, this.error);

  final T? data;
  final String? error;
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(final T? data) : super(data, null);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(final String error) : super(null, error);
}
