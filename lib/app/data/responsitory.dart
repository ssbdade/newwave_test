import 'package:dio/dio.dart';
import 'package:movie/app/models/movie_model.dart';

class MoviesRepo {

  Future<List<MovieModel>> fetchMovies() async {
    try {
      Response response = await Dio().get(
          'https://api.themoviedb.org/3/discover/movie?api_key=26763d7bf2e94098192e629eb975dab0&page=1');
      List<MovieModel> movies = [];
      response.data["results"].forEach((v) {
        movies.add(MovieModel.fromJson(v));
      });
      return movies;
    } catch (error) {
      rethrow;
    }
  }
}