import 'package:conduit_interview_task/data/repositories/calculator_repository.dart';
import 'package:test/test.dart';

void main() {
  final _caculatorRepository = CalculatorRepository();

  test('Addition Test', () {
    expect(_caculatorRepository.add(1, 2), 3);
  });
}
