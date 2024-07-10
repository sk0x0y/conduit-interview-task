import 'package:conduit_interview_task/core/constants/operator.dart';
import 'package:conduit_interview_task/core/exceptions/unknown_exception.dart';
import 'package:conduit_interview_task/data/repositories/calculator_repository_impl.dart';
import 'package:conduit_interview_task/domain/usecases/calculator_usecase.dart';

class CalculatorRepository implements CalculatorRepositoryImpl {
  final CalculatorUseCase _calculatorUseCase;

  CalculatorRepository(this._calculatorUseCase);

  bool isValidOperator(String operator) {
    return _calculatorUseCase.isValidOperator(operator);
  }

  @override
  double calculate(double a, Operator operator, double b) {
    switch (operator) {
      case Operator.add:
        return _calculatorUseCase.add(a, b);

      case Operator.subtract:
        return _calculatorUseCase.subtract(a, b);

      case Operator.multiply:
        return _calculatorUseCase.multiply(a, b);

      case Operator.divide:
        return _calculatorUseCase.divide(a, b);

      default:
        throw UnknownException(point: 'calculate');
    }
  }
}
