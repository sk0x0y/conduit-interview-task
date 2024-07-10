import 'package:test/test.dart';

import 'package:conduit_interview_task/core/constants/operator.dart';
import 'package:conduit_interview_task/data/repositories/calculator_repository.dart';
import 'package:conduit_interview_task/domain/usecases/calculator_usecase.dart';

// class MockCalculatorUseCase extends Mock implements CalculatorUseCase {}

void main() {
  // CalculatorRepository repository;
  // MockCalculatorUseCase mockCalculatorUseCase;
  late CalculatorRepository calculatorRepository;

  setUp(() {
    calculatorRepository = CalculatorRepository(CalculatorUseCase());
  });

  test('isValidOperator', () {
    // operatorMap 을 이용해서 연산자가 유효한지 검사
    // expect(calculatorRepository.isValidOperator('+'), contains(operatorMap));
    // expect(calculatorRepository.isValidOperator('-'), contains(operatorMap));
    // expect(calculatorRepository.isValidOperator('*'), contains(operatorMap));
    // expect(calculatorRepository.isValidOperator('/'), contains(operatorMap));
  });

  test('calculate', () {
    expect(calculatorRepository.calculate(2.0, Operator.add, 3.0), 5.0);
    expect(calculatorRepository.calculate(5.0, Operator.subtract, 2.0), 3.0);
    expect(calculatorRepository.calculate(3.0, Operator.multiply, 4.0), 12.0);
    expect(calculatorRepository.calculate(10.0, Operator.divide, 2.0), 5.0);
  });
}
