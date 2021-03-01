import 'package:flutter/material.dart';

class Utils{
 // Utils utils = Utils();

   static Widget welcome_text(String welcomeText) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 103.0),
        ),
        Text(
          'Welcome To',
          style: TextStyle(color: Colors.green, fontSize: 20.0),
        ),
        Text(
          "${welcomeText}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Color(0xffD0874C),
          ),
        ),
      ],
    );
  }

  static Widget largeButton(String title,Function onPressed) {
     return InkWell(
       onTap: onPressed,
       child: Padding(
         padding:    EdgeInsets.symmetric(horizontal: 120.0),
         child: Container(

           height: 45.0,
          // width: 149.0,
           decoration: BoxDecoration(
               color: Color(0xffD0874C),
               borderRadius: BorderRadius.all(Radius.circular(30))),
           child: Center(child: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
         ),
       ),
     );
   }

  static Widget email_text(String email) {
     return Container(
         child: Padding(
           padding: EdgeInsets.all(20.0),
           child: TextField(
             decoration: InputDecoration(
                 hintText: email,
                 hintStyle: TextStyle(
                     fontSize: 15.0,
                     fontWeight: FontWeight.bold,
                     color: Colors.grey)),
           ),
         ));
   }

  static Widget smallButton(String name,Function onPressed) {
     return FlatButton(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(23.0),
       ),
       color: Colors.green,
       onPressed: onPressed,
       child: Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),),
     );
   }
}


