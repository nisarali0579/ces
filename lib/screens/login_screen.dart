import 'package:campus_emargency_project_ui/screens/ForgetScreen.dart';
import 'package:flutter/material.dart';
import 'package:campus_emargency_project_ui/utils/utils.dart';
import 'package:campus_emargency_project_ui/screens/signup_screen.dart';
import 'package:campus_emargency_project_ui/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisibleOne = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
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
                height: 50.0,
              ),
              Center(
                child: Utils.welcome_text("LOGIN"),
              ),
              SizedBox(
                height: 30.0,
              ),
              Utils.email_text("Email"),
              SizedBox(
                height: 1.0,
              ),
              Container(
                  child: Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    // suffix: Icon(Icons.visibility_off),

                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisibleOne
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.pinkAccent,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisibleOne = !_passwordVisibleOne;
                        });
                      },
                    ),
                  ),
                  obscureText: _passwordVisibleOne,
                ),
              )),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ForgetPassword.id);
                  },
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Utils.largeButton('Login', () {
                print('login succesfully');
              }),
              SizedBox(
                height: 90.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 100.0),
                child: Row(
                  children: [
                    Text(
                      'New to Spotify?',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignUpScreen.id);
                      },
                      child: Text(
                        ' Register',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
