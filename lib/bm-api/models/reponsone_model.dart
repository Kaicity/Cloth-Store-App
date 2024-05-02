class Response<T> {
  final int? type;
  final int? status;
  final List<String> message;
  final T? result;

  Response({
    this.type,
    this.status,
    this.message = const [], // Initialize message as empty list by default
    this.result,
  });
}
