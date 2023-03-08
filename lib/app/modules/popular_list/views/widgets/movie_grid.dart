import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/app/models/movie_model.dart';

import 'score_widget.dart';


class MovieGrid extends StatelessWidget {
  final RxList<MovieModel> movies;

  const MovieGrid({Key? key, required this.movies,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GridView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          mainAxisExtent: 250,
        ),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                  image: NetworkImage('https://image.tmdb.org/t/p/w500/'
                      '${movies[index].posterPath}'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: ScoreCircle(
                        score: movies[index].voteAverage.toString(),
                      )),
                  const Spacer(),
                  Text(movies[index].releaseDate!.substring(0, 4),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  Text(movies[index].originalTitle!.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}