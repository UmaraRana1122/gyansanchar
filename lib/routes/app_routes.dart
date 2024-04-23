import 'package:get/get.dart';
import 'package:gyansanchar/presentation/assignment/assignment_screen.dart';
import 'package:gyansanchar/presentation/assignment/binding/assignment_binding.dart';
import 'package:gyansanchar/presentation/attendence/attendence.dart';
import 'package:gyansanchar/presentation/attendence/binding/attendence_binding.dart';
import 'package:gyansanchar/presentation/course/binding/course_binding.dart';
import 'package:gyansanchar/presentation/course/course_screen.dart';
import 'package:gyansanchar/presentation/home_screen/binding/home_binding.dart';
import 'package:gyansanchar/presentation/home_screen/home_screen.dart';
import 'package:gyansanchar/presentation/schedule/binding/schedule_binding.dart';
import 'package:gyansanchar/presentation/schedule/schedule_screen.dart';
import 'package:gyansanchar/presentation/syllabus/binding/syllabus_binding.dart';
import 'package:gyansanchar/presentation/syllabus/syllabus_screen.dart';

class AppRoutes {
  static const String homeScreen = '/homeScreen';
  static const String roleAssignmentScreen = '/assignmentScreen';
  static const String onBoardingScreen = '/CourseScreen';
  static String initialRoute = '/initialRoute';
  static String scheduleScreen = '/ScheduleScreen';
  static String attendanceScreen = '/AttendanceScreen';

  static List<GetPage> pages = [
    GetPage(
      name: onBoardingScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: onBoardingScreen,
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
    GetPage(
      name: onBoardingScreen,
      page: () => AttendanceScreen(),
      bindings: [
        AttendanceBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SyllabusScreen(),
      bindings: [
        SyllabusBinding(),
      ],
    )
  ];
}
