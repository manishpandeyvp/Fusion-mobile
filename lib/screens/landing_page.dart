import 'package:flutter/material.dart';
import 'package:fusion/models/user.dart';
import 'package:fusion/screens/LoginandDashboard/dashboard.dart';
import 'package:fusion/screens/LoginandDashboard/login_page.dart';
import 'package:fusion/services/storage_service.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: StorageService.getInstance(),
      builder: (context, AsyncSnapshot? snapshot) {
        if (snapshot!.hasData) {
          try {
            User _ = snapshot.data.userInDB;
          } catch (e) {
            return LoginPage();
          }
          return Dashboard();
        }
        return LoginPage();
      },
    );
  }
}
