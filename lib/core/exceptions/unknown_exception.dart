class UnknownException implements Exception {
  UnknownException();

  @override
  String toString() {
    return 'UnknownException: 알 수 없는 에러가 발생했습니다.';
  }
}
