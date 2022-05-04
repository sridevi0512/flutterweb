import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/screens/loginPage.dart';
import 'package:flutterweb/screens/signupPage.dart';

import 'menuItem.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

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
          MenuItem(
            title: "How it works ",
            press: (){},
          ),
          Spacer(),
          MenuItem(
            title: "Courses",
            press: (){},
          ),
          Spacer(),
          MenuItem(
            title: "Benefits",
            press: (){},
          ),
          Spacer(),
          MenuItem(
            title: "Plans",
            press: (){},
          ),
          Spacer(),
          MenuItem(
            title: "Feedback",
            press: (){},
          ),
          Spacer(),
          MenuItem(
            title: "Our story",
            press: (){},
          ),
          Spacer(),
          LoginButton(text: "Login",
            press: (){
            },
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SignUpButton(text: "SignUp",
              press: (){

              },
            ),
          ),
          Spacer(),


        ],
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
          onPressed: (){Navigator.of(context).push(
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
            backgroundColor: bgColor
        ),
      ),
    );
  }
}


class SignUpButton extends StatefulWidget {
  final String? text;
  final Function? press;

  const SignUpButton({Key? key,
    this.text,
    this.press}) : super(key: key);

  @override
  State<SignUpButton> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SignUpPage())
      );
      },
      child: Text(
        this.widget.text!.toUpperCase(),
        style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500
        ),
      ),
      style: ElevatedButton.styleFrom(
          primary: Color(0xff5e72e4)
      ),
    );
  }
}


