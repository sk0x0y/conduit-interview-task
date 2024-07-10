class UnknownException implements Exception {
  final String? point;

  UnknownException({this.point});

  @override
  String toString() {
    return 'UnknownException: $point - 알 수 없는 에러가 발생했습니다.';
  }
}
