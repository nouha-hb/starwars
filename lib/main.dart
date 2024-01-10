import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'di.dart' as di;

import 'presenter/screens/splash_screen/splash_screen.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
    designSize: const Size(375, 812),
      builder: (context , child) {
        return const GetMaterialApp(
          home: SplashScreen(),
        debugShowCheckedModeBanner: false,
          //initialRoute: Routes.initial,
          defaultTransition: Transition.fade,
        
      );
      },
    );
  }
}