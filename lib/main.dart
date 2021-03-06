import 'package:flutter/material.dart';
import 'package:fusion/screens/LoginandDashboard/dashboard.dart';
import 'package:fusion/screens/LoginandDashboard/login_page.dart';
import 'package:fusion/screens/Academic/academic_home_page.dart';
import 'package:fusion/screens/Academic/Current_Semester/current_semester_home_page.dart';
import 'package:fusion/screens/Academic/Registration/registration_home_page.dart';
import 'package:fusion/screens/Academic/Thesis/thesis_home_page.dart';
import 'package:fusion/screens/Academic/Apply_for_Bonafide/bonafide.dart';
import 'package:fusion/screens/Academic/Branch_Change/branch_change.dart';
import 'package:fusion/screens/Academic/Check_Attendance/attendance.dart';
import 'package:fusion/screens/Academic/View_Performance/performance.dart';
import 'package:fusion/screens/Academic/Check_Dues/dues.dart';
import 'package:fusion/screens/Gymkhana/Homepage.dart';
import 'package:fusion/screens/Gymkhana/Polls.dart';
import 'package:fusion/screens/Gymkhana/Apply.dart';
import 'package:fusion/screens/Gymkhana/Record.dart';
import 'package:fusion/screens/Gymkhana/Club.dart';
import 'package:fusion/screens/Complaint/complaint.dart';
import 'package:fusion/screens/Profile/profile.dart';
import 'package:fusion/screens/landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fusion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey, fontFamily: 'Nunito'),
      initialRoute: '/landing',
      routes: {
        '/landing': (context) => LandingPage(),
        '/login_page': (context) => LoginPage(),
        '/home_page': (context) => Dashboard(),
        '/academic_home_page': (context) => AcademicHomePage(),
        '/current_semester_home_page': (context) => CurrentSemesterHomePage(),
        '/registration_home_page': (context) => RegistrationHomePage(),
        '/bonafide': (context) => Bonafide(),
        '/branch_change': (context) => BranchChange(),
        '/attendance': (context) => Attendance(),
        '/dues': (context) => Dues(),
        '/thesis': (context) => ThesisHomePage(),
        '/performance': (context) => Performance(),
        '/homepage': (context) => GymkhanaHomepage(),
        '/first': (context) => Apply(),
        '/second': (context) => Polls(),
        '/third': (context) => Clubs(),
        '/fourth': (context) => Records(),
        '/complaint': (context) => Complaint(),
        '/profile': (context) => Profile(),
      },
    );
  }
}
