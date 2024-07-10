import 'package:conduit_interview_task/core/constants/operator.dart';
import 'package:conduit_interview_task/core/exceptions/invalid_exception.dart';

class ExpressionParser {
  static parseLeftOperand(List<String> parsedInput) {
    return double.parse(parsedInput[0]);
  }

  static String parseOperatorFromString(List<String> parsedInput) {
    return parsedInput[1];
  }

  static double parseRightOperand(List<String> parsedInput) {
    return double.parse(parsedInput[2]);
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
        throw InvalidException('입력하신 연산자가 유효하지 않습니다.');
    }
  }
}
