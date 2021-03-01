import 'package:campus_emargency_project_ui/screens/admin_screen.dart';
import 'package:campus_emargency_project_ui/screens/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:campus_emargency_project_ui/utils/utils.dart';
import 'package:campus_emargency_project_ui/screens/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}
// Utils utils = Utils();
class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 17.0,
          ),
          Container(
            //  padding: EdgeInsets.only(top: 17.0, left: 137, right: 154, bottom: 775),
            child: Image.asset(
              'images/logo.png',
              height: 134,
              width: 137,
            ),
          ),
          SizedBox(
            height: 93.0,
          ),
          Center(
            child: Utils.welcome_text("LOGIN"),
          ),
          SizedBox(
            height: 150.0,
          ),
          Utils.largeButton('user login', () {
            Navigator.pushNamed(context,  LoginScreen.id);
           // Navigator.pushNamed(context,  userScreen.id);
          }),
          SizedBox(
            height: 37.0,
          ),
          Utils.largeButton('admin login', () {
            Navigator.pushNamed(context,  LoginScreen.id);
           // Navigator.pushNamed(context,  adminScreen.id);
            print('admin click');
          }),
        ],
      ),
    ),
    );
  }
}

