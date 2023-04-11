import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_f/utils/routes_all.dart';
import 'package:sizer/sizer.dart';

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          initialBinding: AppBinding(),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splashScreen,
          getPages: Routes.pages,

        );
      },
    );
  }
}


class AppBinding extends Bindings {
  @override
  void dependencies() {

  }
}