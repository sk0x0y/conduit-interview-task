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

    if (parsedInput.length != 3 ||
        parsedInput.any((element) => element.isEmpty)) {
      throw InvalidException('Operand Operator Operand 형식으로 입력해주세요');
    }

    final leftOperand = ExpressionParser.parseOperand(parsedInput[0]);
    final operator = ExpressionParser.parseOperatorFromString(parsedInput);
    final rightOperand = ExpressionParser.parseOperand(parsedInput[2]);

    if (!calculatorRepository.isValidOperator(operator)) {
      throw InvalidException('입력하신 연산자($operator)가 유효하지 않습니다.');
    }

    final result = calculatorRepository.calculate(
      leftOperand,
      ExpressionParser.parseOperatorToEnum(operator),
      rightOperand,
    );

    print('계산 결과 : $result');
  }
}
