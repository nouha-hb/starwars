import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starwars/core/style/colors.dart';
import 'package:starwars/core/style/text_style.dart';

// ignore: must_be_immutable
class MovieComponent extends StatelessWidget {
  String? title;
  String? releaseDate;
  String? director;
  String? producer;
  String? description;

  MovieComponent({
    super.key,
    this.title,
    this.releaseDate,
    this.director,
    this.producer,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    String cleanedDescription = description?.replaceAll('\n', '') ?? '';

    return Padding(
      padding: EdgeInsets.only(top: 8.0.h),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 136.h,
        decoration: const BoxDecoration(color: AppColors.blackBackground),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(14.0.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title!,
                      style: AppTextStyle.movieComponentTitleTextStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Release date",
                          style: AppTextStyle.movieComponentSmallTextStyle,
                        ),
                        Text(
                          releaseDate!,
                          style: AppTextStyle.movieComponentDescTextStyle,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Director",
                            style: AppTextStyle.movieComponentSmallTextStyle,
                          ),
                          Text(
                            director!,
                            style: AppTextStyle.movieComponentDescTextStyle,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Producer",
                              style: AppTextStyle.movieComponentSmallTextStyle,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              producer!,
                              style: AppTextStyle.movieComponentDescTextStyle,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Expanded(
                  child: Text(
                    cleanedDescription,
                    style: AppTextStyle.movieComponentDescTextStyle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
