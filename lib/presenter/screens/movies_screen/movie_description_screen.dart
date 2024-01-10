import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starwars/core/style/colors.dart';
import 'package:starwars/core/style/text_style.dart';
import 'package:starwars/data/model/movie_result_model.dart';
import 'package:intl/intl.dart';

class MovieDescription extends StatelessWidget {
  final Movie movie;
  const MovieDescription({
    super.key,
    required this.movie,
  });
  // Function to convert date strings to the desired format
  String formatDate(String? dateString) {
    if (dateString == null) return '';

    // Parse the date string
    DateTime date = DateTime.parse(dateString);

    // Format the date as "year/month/day"
    return DateFormat('yyyy/MM/dd').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.black,
        title: Text(
          movie.title!,
          style: AppTextStyle.titleAppbarTextStyle,
        ),
        backgroundColor: AppColors.appBarBackground,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 180.h,
              decoration: const BoxDecoration(color: AppColors.blackBackground),
              child: Padding(
                padding: EdgeInsets.all(10.0.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title!,
                      style: AppTextStyle.movieDetailTitleTextStyle,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Release date",
                              style: AppTextStyle.movieComponentSmallTextStyle,
                            ),
                             SizedBox(
                      height: 8.h,
                    ),
                            Text(
                              formatDate(movie.releaseDate!).toString(),
                              style: AppTextStyle.movieComponentDescTextStyle,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Director ",
                              style: AppTextStyle.movieComponentSmallTextStyle,
                            ),
                               SizedBox(
                      height: 8.h,
                    ),
                              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: movie.director!.split(',').map((producer) {
                    return Text(
                      producer.trim(),
                      style: AppTextStyle.movieComponentDescTextStyle,
                    );
                  }).toList(),
                ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Producer ",
                              style: AppTextStyle.movieComponentSmallTextStyle,
                            ),
                            SizedBox(height: 8.h,),
                            Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: movie.producer!.split(',').map((producer) {
                    return Text(
                      producer.trim(),
                      style: AppTextStyle.movieComponentDescTextStyle,
                    );
                  }).toList(),
                ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(14.0.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Opening craw ",
                    style: AppTextStyle.smallBlackTextStyle,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    movie.openingCrawl?.replaceAll('\n', '') ?? '',
                    style: AppTextStyle.titleAppbarTextStyle,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20.0.w),
                        child: Column(
                          children: [
                            Text(
                              "Created ",
                              style: AppTextStyle.smallBlackTextStyle,
                            ),
                            Text(
                              formatDate(movie.created!).toString(),
                              style: AppTextStyle.smallBlackTextStyle,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Edited",
                            style: AppTextStyle.smallBlackTextStyle,
                          ),
                          Text(
                            formatDate(movie.edited!).toString(),
                            style: AppTextStyle.smallBlackTextStyle,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
