import 'dart:io';

import 'package:conduit_interview_task/core/di/setup_dependency_injection.dart';
import 'package:conduit_interview_task/presentation/calculator_presentor.dart';

void main() {
  setupDependencyInjection();

  print('계산할 값을 입력하세요 : ');
  final userInput = stdin.readLineSync();

  CalculatorPresenter(userInput);
}
