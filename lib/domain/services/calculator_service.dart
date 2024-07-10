import 'package:conduit_interview_task/core/constants/operator.dart';
import 'package:conduit_interview_task/data/utils/expression_parser.dart';
import 'package:conduit_interview_task/domain/services/calculator_service_impl.dart';
import 'package:conduit_interview_task/domain/usecases/calculator_usecase.dart';

class CalculatorService implements CalculatorServiceImpl {
  final CalculatorUseCase _calculatorUsecase;

  CalculatorService(this._calculatorUsecase);

  static bool isValidOperator(String operator) {
    return Operator.values
        .contains(ExpressionParser.parseOperatorToEnum(operator));
  }

  @override
  double add(double a, double b) {
    return _calculatorUsecase.add(a, b);
  }

  @override
  double divide(double a, double b) {
    return _calculatorUsecase.divide(a, b);
  }

  @override
  double multiply(double a, double b) {
    return _calculatorUsecase.multiply(a, b);
  }

  @override
  double subtract(double a, double b) {
    return _calculatorUsecase.subtract(a, b);
  }
}
