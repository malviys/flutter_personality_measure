import 'package:get_it/get_it.dart';
import 'package:quiz_app/framework/repository/quiz_repo.dart';

final serviceLocator = GetIt.instance;

void initializeDependencies() {
  serviceLocator.registerLazySingleton<QuizRepository>(() => QuizRepository());
}
