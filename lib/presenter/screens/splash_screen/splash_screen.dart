import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:starwars/core/style/assets.dart';
import 'package:starwars/presenter/controllers/splash_screen_controller.dart';

// ignore: camel_case_types
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: GetBuilder<SplashController>(
            init: SplashController(),
            initState: (_) {},
            builder: (controller) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width,
                    height: size.height * 0.9,
                    child: Center(
                      child: Container(
                        width: controller.animation.value * 200,
                        height: controller.animation.value * 200,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(Assets.starWarsLogo))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40.0.h),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 128.w,
                        height: 35.h,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(Assets.thinkitLogo))),
                      ),
                    ),
                  ),
                ],
              );
            }));
  }
}
