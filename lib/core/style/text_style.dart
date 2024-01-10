import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starwars/core/style/colors.dart';

class AppTextStyle {
  static TextStyle totalMoviesTextStyle = GoogleFonts.archivo(
      fontWeight: FontWeight.w400, fontSize: 15.sp, color: AppColors.lightGrey);

  static TextStyle movieComponentTitleTextStyle = GoogleFonts.archivo(
      fontWeight: FontWeight.w400,
      fontSize: 24.sp,
      color: AppColors.whiteTextColor);
  static TextStyle movieComponentSmallTextStyle = GoogleFonts.archivo(
      fontWeight: FontWeight.w400,
      fontSize: 9.sp,
      color: AppColors.whiteTextColor);
  static TextStyle movieComponentDescTextStyle = GoogleFonts.archivo(
      fontWeight: FontWeight.w400,
      fontSize: 13.sp,
      color: AppColors.whiteTextColor);
  static TextStyle movieDetailTitleTextStyle = GoogleFonts.archivo(
      fontWeight: FontWeight.w400,
      fontSize: 36.sp,
      color: AppColors.whiteTextColor);
  static TextStyle titleBlackTextStyle = GoogleFonts.archivo(
      fontWeight: FontWeight.w400, fontSize: 24.sp, color: AppColors.black);
  static TextStyle smallBlackTextStyle = GoogleFonts.archivo(
      fontWeight: FontWeight.w400, fontSize: 13.sp, color: AppColors.black);
  static TextStyle titleAppbarTextStyle = GoogleFonts.archivo(
      fontWeight: FontWeight.w400, fontSize: 17.sp, color: AppColors.black);
  static TextStyle movieDetailDescTextStyle = GoogleFonts.archivo(
      fontWeight: FontWeight.w400,
      fontSize: 36.sp,
      color: AppColors.blackBackground);
}
