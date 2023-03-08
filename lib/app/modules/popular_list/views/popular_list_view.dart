import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:movie/app/modules/popular_list/views/widgets/movie_grid.dart';

import '../controllers/popular_list_controller.dart';

class PopularListView extends GetView<PopularListController> {
  const PopularListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(PopularListController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Popular list',
                  style: TextStyle(
                      fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                MovieGrid(
                  movies: controller.listMovies,
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
