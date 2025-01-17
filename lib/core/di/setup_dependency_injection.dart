import 'package:get_it/get_it.dart';

import 'package:conduit_interview_task/data/repositories/calculator_repository.dart';
import 'package:conduit_interview_task/domain/usecases/calculator_usecase.dart';

final GetIt getIt = GetIt.instance;

void setupDependencyInjection() {
  getIt.registerSingleton<CalculatorUseCase>(
    CalculatorUseCase(),
  );

  getIt.registerLazySingleton<CalculatorRepository>(
    () => CalculatorRepository(getIt<CalculatorUseCase>()),
  );
}
