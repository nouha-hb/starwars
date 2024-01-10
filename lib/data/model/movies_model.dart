
import 'package:starwars/data/model/movie_result_model.dart';
import 'package:starwars/domain/entities/movies_entity.dart';

class Movies {
  int? count;
  List<Movie>? results;

  Movies({this.count, this.results});

  Movies.fromJson(Map<String, dynamic> json) {
    count = json['count'];

    if (json['results'] != null) {
      results = <Movie>[];
      json['results'].forEach((v) {
        results!.add(Movie.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  map(MoviesEntity Function(dynamic e) param0) {}
}

