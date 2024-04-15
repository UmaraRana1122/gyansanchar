import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:gyansanchar/presentation/assignment/assignment_screen.dart';
import 'package:gyansanchar/presentation/assignment/binding/assignment_binding.dart';
import 'package:gyansanchar/presentation/course/binding/course_binding.dart';
import 'package:gyansanchar/presentation/course/course_screen.dart';
import 'package:gyansanchar/presentation/home_screen/binding/home_binding.dart';
import 'package:gyansanchar/presentation/home_screen/home_screen.dart';
import 'package:gyansanchar/presentation/schedule/binding/schedule_binding.dart';
import 'package:gyansanchar/presentation/schedule/schedule_screen.dart';

class AppRoutes {
  static const String homeScreen = '/homeScreen';
  static const String roleAssignmentScreen = '/assignmentScreen';
  static const String onBoardingScreen = '/onBoardingScreen';
  static String initialRoute = '/initiaRoute';
  static const String gradeSelectionScreen = '/gradeSelectionScreen';
  static const String coursePreparingScreen = '/coursePreparingScreen';
  static const String checkBoxScreen = '/checkBoxScreen';
  static const String verifyPhoneScreen = '/verifyPhoneScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String passwordResetScreen = '/passwordResetScreen';
  static const String passwordRestSuccessfullScreen =
      '/passwordRestSuccessfullScreen';
  static const String loginScreen = '/loginScreen';
  static const String forgotPasswordScreen = '/forgotPasswordScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String editProfileScreen = '/editProfileScreen';
  static const String profileScreen = '/profileScreen';
  static const String blogHomeScreen = '/blogHomeScreen';
  static const String postScreen = '/postScreen';

  static List<GetPage> pages = [
    GetPage(
      name: initialRoute,
      page: () => CourseScreen(),
      bindings: [
        CourseBinding(),
      ],
    ),

    GetPage(
      name: onBoardingScreen,
      page: () => ScheduleScreen(),
      bindings: [
        ScheduleBinding(),
      ],
    ),

    GetPage(
      name: roleAssignmentScreen,
      page: () => AssignmentScreen(),
      bindings: [
        AssignmentBinding(),
      ],
    ),
    // GetPage(
    //   name: checkBoxScreen,
    //   page: () => CheckBoxScreen(),
    //   bindings: [
    //     CheckboxBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: coursePreparingScreen,
    //   page: () => const CoursePreparingScreen(),
    //   bindings: [
    //     CoursePreparingBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: gradeSelectionScreen,
    //   page: () => const GradeSelectionScreen(),
    //   bindings: [
    //     GradeSelectionBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: forgotPasswordScreen,
    //   page: () => const ForgotPasswordScreen(),
    //   bindings: [
    //     ForgotPasswordBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: loginScreen,
    //   page: () => const LoginScreen(),
    //   bindings: [
    //     LoginBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: passwordRestSuccessfullScreen,
    //   page: () => const PasswordRestSuccessfullScreen(),
    //   bindings: [
    //     PasswordRestSuccessfullBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: passwordResetScreen,
    //   page: () => const PasswordResetScreen(),
    //   bindings: [
    //     PasswordResetBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: signUpScreen,
    //   page: () => const SignUpScreen(),
    //   bindings: [
    //     SignUpBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: verifyPhoneScreen,
    //   page: () => const VerifyPhoneScreen(),
    //   bindings: [
    //     VerifyPhoneBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: profileScreen,
    //   page: () => const ProfileScreen(),
    //   bindings: [
    //     ProfileBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: editProfileScreen,
    //   page: () => const EditProfileScreen(),
    //   bindings: [
    //     EditProfileBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: notificationScreen,
    //   page: () => const NotificationScreen(),
    //   bindings: [
    //     NotificationBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: postScreen,
    //   page: () => const PostScreen(),
    //   bindings: [
    //     PostBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: blogHomeScreen,
    //   page: () => const BlogHomeScreen(),
    //   bindings: [
    //     BlogHomeBinding(),
    //   ],
    // ),
  ];
}
