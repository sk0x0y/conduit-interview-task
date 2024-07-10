import 'package:conduit_interview_task/core/constants/operator.dart';
import 'package:conduit_interview_task/domain/usecases/calculator_usecase_impl.dart';

class CalculatorUseCase implements CalculatorUseCaseImpl {
  bool isValidOperator(String operator) {
    return operatorMap.containsKey(operator);
  }

  @override
  double add(double a, double b) {
    return a + b;
  }

  @override
  double subtract(double a, double b) {
    return a - b;
  }

  @override
  double multiply(double a, double b) {
    return a * b;
  }

  @override
  double divide(double a, double b) {
    if (b == 0) {
      throw Exception('0 으로 나눌 수 없습니다.');
    }

    return a / b;
  }
}
