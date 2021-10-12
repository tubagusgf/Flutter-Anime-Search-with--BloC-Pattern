class DefException implements Exception {
  final String message;
  const DefException({String? msg}) : message = msg ?? "def exception";

  @override
  String toString() {
    return message;
  }
}
