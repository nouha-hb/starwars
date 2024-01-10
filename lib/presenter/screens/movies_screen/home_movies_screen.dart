import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:starwars/core/style/assets.dart';
import 'package:starwars/core/style/colors.dart';
import 'package:starwars/core/style/text_style.dart';
import 'package:starwars/presenter/screens/movies_screen/movie_description_screen.dart';
import 'package:starwars/presenter/widgets/movie_component.dart';
import 'package:starwars/presenter/controllers/movies_controller.dart';

class HomeMovies extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomeMovies({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Think-it Star Wars",
          style: AppTextStyle.titleAppbarTextStyle,
        ),
        backgroundColor: AppColors.appBarBackground,
        centerTitle: true,
      ),
      body: GetBuilder<MoviesController>(
        init: MoviesController(),
        builder: (controller) {
          controller.update();
          return Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 220.h,
                decoration: const BoxDecoration(
                  color: AppColors.blackBackground,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 146.w,
                        height: 146.h,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Assets.starWarsLogo),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Obx(() => Text(
                              "  Total ${controller.count} Movies",
                              style: AppTextStyle.totalMoviesTextStyle,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: controller.isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              AppColors.blackBackground,
                            ),
                          ),
                        )
                      : ListView.builder(
                  itemCount: controller.moviesList.length,
                  itemBuilder: (context, index) {
                    final movie = controller.moviesList[index];
                    return InkWell(
                      onTap: () => Get.to(MovieDescription(
                        movie: movie,
                      )),
                      child: MovieComponent(
                        title: movie.title,
                        releaseDate: movie.releaseDate,
                        director: movie.director,
                        producer: movie.producer,
                        description: movie.openingCrawl,
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
