import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:starwars/presenter/screens/movies_screen/home_movies_screen.dart';

class SplashController extends GetxController  with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void onInit() {
    _navigatetohome();
    animationInitilization();
    super.onInit();
    
  }
  
  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Get.off(()=>const HomeMovies());
    }

  animationInitilization() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut)
            .obs
            .value;
    animation.addListener(() => update());
    animationController.forward();
  }
}
