import 'package:conduit_interview_task/core/constants/operator.dart';
import 'package:conduit_interview_task/core/exceptions/invalid_exception.dart';

class ExpressionParser {
  static double parseOperand(String operand) {
    final parsedOperand = double.tryParse(operand);

    if (parsedOperand == null) {
      throw InvalidException('입력하신 피연산자($operand)가 유효하지 않습니다.');
    }

    return parsedOperand;
  }

  static String parseOperatorFromString(List<String> parsedInput) {
    return parsedInput[1];
  }

  static Operator parseOperatorToEnum(String operator) {
    switch (operator) {
      case '+':
        return Operator.add;
      case '-':
        return Operator.subtract;
      case '*':
        return Operator.multiply;
      case '/':
        return Operator.divide;
      default:
        throw InvalidException('입력하신 연산자($operator)가 유효하지 않습니다.');
    }
  }
}
