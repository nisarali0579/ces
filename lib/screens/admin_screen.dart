import 'package:flutter/material.dart';

class adminScreen extends StatefulWidget {
  static String id = 'adminScreen';

  @override
  _adminScreenState createState() => _adminScreenState();
}

class _adminScreenState extends State<adminScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20.0,),
            Text('Hi Admin',style: TextStyle(color: Color(0xffD0874C),fontSize: 20.0),),
            Text('Welcome Back',style: TextStyle(color: Colors.green,fontSize: 20.0),),
          ],
        )
      ),
    );
  }
}
