import 'package:dartz/dartz.dart';
import 'package:starwars/core/errors/failures/failures.dart';
import 'package:starwars/domain/entities/movies_entity.dart';
import 'package:starwars/domain/repositories/movies_repository.dart';

class GetAllMoviesUsecase {
  final MoviesRepository moviesRepository;

  GetAllMoviesUsecase(this.moviesRepository);

  Future<Either<Failure, MoviesEntity>> call() async {
    return await moviesRepository.getAllMoviesInfo();
  }
}
