class AsyncValue<T> {
  T? data;
  Object? error;
  bool isLoading = false;

  AsyncValue.loading() {
    isLoading = true;
  }

  AsyncValue.data(this.data) {
    isLoading = false;
  }

  AsyncValue.error(this.error) {
    isLoading = false;
  }
}
