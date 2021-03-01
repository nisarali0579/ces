import 'package:campus_emargency_project_ui/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:campus_emargency_project_ui/utils/utils.dart';
import 'package:campus_emargency_project_ui/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  static String id = "SignUpScreen";

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
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
              height: 30.0,
            ),
            Center(
              child: Utils.welcome_text("LOGIN"),
            ),
            SizedBox(
              height: 30.0,
            ),
            Utils.email_text("EMAIL"),
            Utils.email_text("PASSWORD"),
            Utils.email_text("USER NAME"),
            SizedBox(
              height: 60.0,
            ),
            Utils.largeButton("SIGNUP", () {
              Navigator.pushNamed(context, LoginScreen.id);
            }),
            SizedBox(
              height: 10.0,
            ),
            Utils.largeButton("GO BACK", () {
              Navigator.pushNamed(context, WelcomeScreen.id);
            })
          ],
        ),
      ),
    );
  }
}
