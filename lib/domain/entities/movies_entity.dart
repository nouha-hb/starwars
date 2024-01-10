import 'package:starwars/data/model/movie_result_model.dart';

class MoviesEntity {
  int? count;
  List<Movie>? results;

  MoviesEntity({
    required this.count,
    required this.results,
  });
}




// class Movies {
//   int? count;
//   List<Movie>? results;

//   Movies({this.count, this.results});
//   List<Object?> get props => [count, results];
// }

// class Movie {
//   String? title;
//   int? episodeId;
//   String? openingCrawl;
//   String? director;
//   String? producer;
//   String? releaseDate;
//   List<String>? characters;
//   List<String>? planets;
//   List<String>? starships;
//   List<String>? vehicles;
//   List<String>? species;
//   String? created;
//   String? edited;
//   String? url;

//   Movie(
//       {this.title,
//       this.episodeId,
//       this.openingCrawl,
//       this.director,
//       this.producer,
//       this.releaseDate,
//       this.characters,
//       this.planets,
//       this.starships,
//       this.vehicles,
//       this.species,
//       this.created,
//       this.edited,
//       this.url});
//   List<Object?> get props => [
//         title,
//         episodeId,
//         openingCrawl,
//         director,
//         producer,
//         releaseDate,
//         characters,
//         planets,
//         starships,
//         vehicles,
//         species,
//         created,
//         edited,
//         url
//       ];
// }
