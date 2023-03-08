import 'package:get/get.dart';
import 'package:movie/app/data/responsitory.dart';
import 'package:movie/app/models/movie_model.dart';

class PopularListController extends GetxController {
  //TODO: Implement PopularListController

  MoviesRepo moviesRepo = MoviesRepo();

  RxList<MovieModel> listMovies = <MovieModel>[].obs;

  final count = 0.obs;
  @override
  void onInit() async {
    listMovies.addAll(await moviesRepo.fetchMovies());
    print(listMovies.length);
    super.onInit();
  }


  void increment() => count.value++;
}
