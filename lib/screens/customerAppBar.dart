import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/screens/loginPage.dart';
import 'package:flutterweb/screens/signupPage.dart';
import 'package:get/get.dart';

import 'homePage.dart';
import '../model/appbarmenuItem.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  GlobalKey<State<StatefulWidget>>? dataKey;
  GlobalKey<State<StatefulWidget>>? courseDataKey;
  GlobalKey<State<StatefulWidget>>? benefitDataKey;
  GlobalKey<State<StatefulWidget>>? plansDataKey;
  GlobalKey<State<StatefulWidget>>? feedbackDataKey;
  GlobalKey<State<StatefulWidget>>? storyDataKey;
  Size preferredSize;


  CustomAppBar({Key? key,
     this.dataKey,
     this.courseDataKey,
     this.benefitDataKey,
     this.plansDataKey,
     this.feedbackDataKey,
     this.storyDataKey
  }):
        preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0),
              blurRadius: 6.0,
            ),
          ],
        ),

        child: Row(
          children: [

            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/logo.png",
                height: 50,
                width: 200,
              ),
            ),
            Spacer(),
            AppBarMenuItem(
              title: "How it works ",
              press: (){
                Scrollable.ensureVisible(dataKey!.currentContext!);
                 Get.toNamed("/home");

              },
            ),
            Spacer(),
            AppBarMenuItem(
              title: "Courses",
              press: (){
                Scrollable.ensureVisible(courseDataKey!.currentContext!);
              },
            ),
            Spacer(),
            AppBarMenuItem(
              title: "Benefits",
              press: (){
                Scrollable.ensureVisible(benefitDataKey!.currentContext!);
              },
            ),
            Spacer(),
            AppBarMenuItem(
              title: "Plans",
              press: (){
                Scrollable.ensureVisible(plansDataKey!.currentContext!);
              },
            ),
            Spacer(),
            AppBarMenuItem(
              title: "Feedback",
              press: (){
                Scrollable.ensureVisible(feedbackDataKey!.currentContext!);
              },
            ),
            Spacer(),
            AppBarMenuItem(
              title: "Our story",
              press: (){
                Scrollable.ensureVisible(storyDataKey!.currentContext!);
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





