import 'package:get/get.dart';
import 'package:starwars/data/model/movie_result_model.dart';
import 'package:starwars/di.dart';
import 'package:starwars/domain/usecases/get_all_movies_usecase.dart';

class MoviesController extends GetxController {
  final RxList<Movie> moviesList = <Movie>[].obs;
  final RxInt count = 0.obs;
  bool isLoading = false;

  @override
  void onInit() {
    super.onInit();
    fetchMovies();
  }

  void fetchMovies() async {
    try {
      isLoading = true;

      final result = await GetAllMoviesUsecase(sl.call())();

      result.fold(
        (failure) {
          print("Left failure: $failure");
          // Handle failure as needed
        },
        (movies) {
          // Update the observable variables
          moviesList.assignAll(movies.results ?? []);

          count.value = movies.count ?? 0;
          update();
        },
      );
    } catch (e) {
      print('Error while fetching movies: $e');
    } finally {
      isLoading = false;
    }
  }
}
