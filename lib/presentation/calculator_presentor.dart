import 'package:conduit_interview_task/core/di/setup_dependency_injection.dart';
import 'package:conduit_interview_task/core/exceptions/invalid_exception.dart';
import 'package:conduit_interview_task/data/repositories/calculator_repository.dart';
import 'package:conduit_interview_task/data/utils/expression_parser.dart';

class CalculatorPresenter {
  final calculatorRepository = getIt<CalculatorRepository>();

  CalculatorPresenter(String? userInput) {
    if (userInput!.isEmpty) {
      throw InvalidException('사용자 입력이 비어있습니다.');
    }

    final parsedInput = userInput.split(' ');

    if (parsedInput.length != 3) {
      throw InvalidException('입력하신 명령을 확인 후 다시 시도해주세요.');
    }

    final leftOperand = ExpressionParser.parseLeftOperand(parsedInput);
    final operator = ExpressionParser.parseOperatorFromString(parsedInput);
    final rightOperand = ExpressionParser.parseRightOperand(parsedInput);

    if (!CalculatorRepository.isValidOperator(operator)) {
      throw InvalidException('입력하신 연산자가 유효하지 않습니다.');
    }

    final result = calculatorRepository.calculate(
      leftOperand,
      ExpressionParser.parseOperatorToEnum(operator),
      rightOperand,
    );

    print('계산 결과 : $result');
  }
}
