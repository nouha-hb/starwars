import 'package:dartz/dartz.dart';
import 'package:starwars/core/errors/failures/failures.dart';
import 'package:starwars/domain/entities/movies_entity.dart';

abstract class MoviesRepository {
  Future<Either<Failure, MoviesEntity>> getAllMoviesInfo();
}
