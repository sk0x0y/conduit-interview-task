import 'package:test/test.dart';

import 'package:conduit_interview_task/domain/usecases/calculator_usecase.dart';

void main() {
  late CalculatorUseCase calculatorUseCase;

  setUp(() {
    calculatorUseCase = CalculatorUseCase();
  });

  test('덧셈', () {
    expect(calculatorUseCase.add(2, 3), equals(5));
    expect(calculatorUseCase.add(-2, 3), equals(1));
    expect(calculatorUseCase.add(0, 0), equals(0));
  });

  test('뺄셈', () {
    expect(calculatorUseCase.subtract(5, 3), equals(2));
    expect(calculatorUseCase.subtract(3, 5), equals(-2));
    expect(calculatorUseCase.subtract(0, 0), equals(0));
  });

  test('곱셈', () {
    expect(calculatorUseCase.multiply(2, 3), equals(6));
    expect(calculatorUseCase.multiply(-2, 3), equals(-6));
    expect(calculatorUseCase.multiply(0, 0), equals(0));
  });

  test('나눗셈', () {
    expect(calculatorUseCase.divide(6, 3), equals(2));
    expect(calculatorUseCase.divide(6, 2), equals(3));
    expect(calculatorUseCase.divide(0, 5), equals(0));
  });

  test('0으로 나누면 Infinity 리턴되므로 throw Exception', () {
    expect(() => calculatorUseCase.divide(6, 0), throwsA(isA<Exception>()));
  });
}
