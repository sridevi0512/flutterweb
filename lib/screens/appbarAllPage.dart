import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/model/customMenuItem.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/screens/loginPage.dart';
import 'package:flutterweb/screens/signupPage.dart';
import 'package:get/get.dart';

import 'homePage.dart';
import '../model/appbarmenuItem.dart';

class AppBarAllPages extends StatelessWidget implements PreferredSizeWidget {

  Size preferredSize;


  AppBarAllPages({Key? key,

  }):
        preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff2b2b35),
      ),

      child: Row(
        children: [

          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              "assets/images/footer-logo.png",
              width: 200,
              height: 34,
              fit: BoxFit.cover,
            ),
          ),
          Spacer(),
          CustomMenuItem(
            title: "How it works ",
            press: (){
              Get.toNamed("/home");
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));


            },
          ),
          Spacer(),
          CustomMenuItem(
            title: "Courses",
            press: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));

            },
          ),
          Spacer(),
          CustomMenuItem(
            title: "Benefits",
            press: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          Spacer(),
          CustomMenuItem(
            title: "Plans",
            press: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          Spacer(),
          CustomMenuItem(
            title: "Feedback",
            press: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          Spacer(),
          CustomMenuItem(
            title: "Our story",
            press: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          Spacer(),
          LoginButton(
            text: "Login",
            press: (){
              print("****press*****");
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoginPage())
              );
            },
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Signup(text: "SignUp",
              press: (){
                Get.toNamed("/signup");
                print("****press*****");
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpPage())
                );
              },
            ),
          ),
          Spacer(),


        ],
      ),
    );

  }


}

class Signup extends StatelessWidget {
  final String? text;
  final Function? press;

  Signup({Key? key,
    this.text,
    this.press}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        press!();
      },
      child: Text(
        text!.toUpperCase(),
        style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Color(0xff5e72e4),
        minimumSize: const Size(70, 40),
        maximumSize: const Size(90, 40),
      ),
    );

  }

}


class LoginButton extends StatefulWidget {
  final String? text;
  final Function? press;

  const LoginButton({Key? key,
    this.text,
    this.press}) : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  int valueHolder = 10;
  Color bgColor = Colors.white;
  Color textColor = Color(0xff4F76F6);
  double x = 0.0;
  double y = 0.0;

  void _updateLocation(PointerEvent details) {
    setState(() {
      bgColor = Color(0xff5e72e4);
      textColor = Colors.white;
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      textColor = Color(0xff4F76F6);
      bgColor = Colors.white;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: OutlinedButton(
        onPressed: (){
          Get.toNamed("/login");
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LoginPage())
          );
        },
        child: Text(
          this.widget.text!.toUpperCase(),
          style: TextStyle(
              color: textColor,
              fontSize: 15,
              fontWeight: FontWeight.w500
          ),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 1.0,color: Color(0xff5e72e4)),
          backgroundColor: bgColor,
          minimumSize: const Size(70, 40),
          maximumSize: const Size(90, 40),
        ),
      ),
    );
  }
}





