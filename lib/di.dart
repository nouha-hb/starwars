import 'package:get_it/get_it.dart';
import 'package:starwars/data/data_sources/remote_data_sources/movies_remote_data_source.dart';
import 'package:starwars/data/repositories/movies_repository_impl.dart';
import 'package:starwars/domain/repositories/movies_repository.dart';
import 'package:starwars/domain/usecases/get_all_movies_usecase.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Registering Dio

  
  // Registering MoviesRemoteDataSource
  sl.registerLazySingleton<MoviesRemoteDataSource>(() => MoviesRemoteDataSourceImpl());

  // Registering MoviesRepository
  sl.registerLazySingleton<MoviesRepository>(() => MoviesRepositoryImpl(sl()));

  // Registering GetAllMoviesUsecase
  sl.registerLazySingleton<GetAllMoviesUsecase>(() => GetAllMoviesUsecase(sl()));
}
