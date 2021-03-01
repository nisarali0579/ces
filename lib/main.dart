import 'package:flutter/material.dart';

import 'package:campus_emargency_project_ui/screens/login.dart';
import 'package:campus_emargency_project_ui/screens/login_screen.dart';
import 'package:campus_emargency_project_ui/screens/signup_screen.dart';
import 'package:campus_emargency_project_ui/screens/ForgetScreen.dart';
import 'package:campus_emargency_project_ui/screens/ResistScreen.dart';
import 'package:campus_emargency_project_ui/screens/admin_screen.dart';
import 'package:campus_emargency_project_ui/screens/user_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
       //home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id:(context) => SignUpScreen(),
        ForgetPassword.id:(context) =>ForgetPassword(),
        ResitPassword.id :(context) => ResitPassword(),
        adminScreen.id:(context) =>adminScreen(),
        userScreen.id :(context) => userScreen(),
      },
    );
  }
}

// color: Color(0xffD0874C),
// Navigator.pushNamed(context, ForgetPassword.id);