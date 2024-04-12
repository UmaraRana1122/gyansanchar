import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gyansanchar/core/constant/constants.dart';
import 'package:gyansanchar/core/utils/dismiss_keyboard.dart';
import 'package:gyansanchar/routes/app_routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return DismissKeyboard(
      child: ScreenUtilInit(
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.red,
                useMaterial3: true,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),

              locale: Get.deviceLocale, //for setting localization strings

              title: Constants.strGyanSanchar,
              //  theme: AppTheme.lightTheme,
              initialRoute: AppRoutes.initialRoute,
              getPages: AppRoutes.pages,
            );
          }),
    );
  }
}

