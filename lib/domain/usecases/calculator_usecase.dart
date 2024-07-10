import 'package:conduit_interview_task/domain/usecases/calculator_usecase_impl.dart';

class CalculatorUseCase implements CalculatorUseCaseImpl {
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
    return a / b;
  }
}
