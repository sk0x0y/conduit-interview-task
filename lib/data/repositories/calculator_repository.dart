import 'package:conduit_interview_task/core/constants/operator.dart';
import 'package:conduit_interview_task/core/exceptions/unknown_exception.dart';
import 'package:conduit_interview_task/data/repositories/calculator_repository_impl.dart';
import 'package:conduit_interview_task/domain/services/calculator_service.dart';

class CalculatorRepository implements CalculatorRepositoryImpl {
  final CalculatorService _calculatorService;

  CalculatorRepository(this._calculatorService);

  @override
  double calculate(double a, Operator operator, double b) {
    switch (operator) {
      case Operator.add:
        return _calculatorService.add(a, b);

      case Operator.subtract:
        return _calculatorService.subtract(a, b);

      case Operator.multiply:
        return _calculatorService.multiply(a, b);

      case Operator.divide:
        return _calculatorService.divide(a, b);

      default:
        throw UnknownException();
    }
  }

  static bool isValidOperator(String operator) {
    return CalculatorService.isValidOperator(operator);
  }
}
