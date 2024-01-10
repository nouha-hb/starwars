import 'package:dartz/dartz.dart';
import 'package:starwars/core/errors/exceptions/exceptions.dart';
import 'package:starwars/core/errors/failures/failures.dart';
import 'package:starwars/data/data_sources/remote_data_sources/movies_remote_data_source.dart';
import 'package:starwars/domain/entities/movies_entity.dart';
import 'package:starwars/domain/repositories/movies_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final MoviesRemoteDataSource moviesRemoteDataSource;

  MoviesRepositoryImpl(this.moviesRemoteDataSource);

  @override
  Future<Either<Failure, MoviesEntity>> getAllMoviesInfo() async {
  try {
      final movies = await moviesRemoteDataSource.getAllMoviesInfo();
      return right(MoviesEntity(count: movies.count, results: movies.results));
    } on ServerException {
      return left(ServerFailure());
    } on NotAuthorizedException {
      return left(NotAuthorizedFailure());
    }
  }
}
