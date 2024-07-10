import 'package:conduit_interview_task/core/constants/operator.dart';

abstract class CalculatorRepositoryImpl {
  double calculate(double a, Operator operator, double b);
}
