import 'package:dio/dio.dart';
import 'package:starwars/core/constant/api_const.dart';
import 'package:starwars/core/errors/exceptions/exceptions.dart';
import 'package:starwars/data/model/movies_model.dart';

abstract class MoviesRemoteDataSource {
  Future<Movies> getAllMoviesInfo();
}

class MoviesRemoteDataSourceImpl implements MoviesRemoteDataSource {
  final dio = Dio();

  @override
  Future<Movies> getAllMoviesInfo() async {
    try {
      final response = await dio.get(
        ApiConst.moviesListUrl,
      );
      final data = response.data;
      Movies movies = Movies.fromJson(data);
      return movies;
    // ignore: deprecated_member_use
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        throw NotAuthorizedException();
      } else {
        throw ServerException();
      }
    }
  }
}
