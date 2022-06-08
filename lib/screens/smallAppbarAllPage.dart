import 'package:flutter/material.dart';
import 'package:flutterweb/screens/loginPage.dart';
import 'package:flutterweb/screens/signupPage.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homePage.dart';

class SmallAppBarAllPage extends StatefulWidget implements PreferredSizeWidget {

  Size preferredSize;

  SmallAppBarAllPage({Key? key,

  }) :
        preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  State<SmallAppBarAllPage> createState() => _SmallAppBarAllPageState();
}

class _SmallAppBarAllPageState extends State<SmallAppBarAllPage> {
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

  void showPopUpMenuAtTap(BuildContext context, TapDownDetails details) {
    showMenu(
        context: context,
        position: RelativeRect.fromLTRB(
          details.globalPosition.dx,
          details.globalPosition.dy,
          details.globalPosition.dx,
          details.globalPosition.dy,
        ),
        items: [
          PopupMenuItem<String>(
            child: Text("How it works"), value: '1',
          ),
          PopupMenuItem<String>(
            child: Text("Courses"), value: '2',
          ),
          PopupMenuItem<String>(
            child: Text("Benefits"), value: '3',
          ),
          PopupMenuItem<String>(
            child: Text("Plans"), value: '4',
          ),
          PopupMenuItem<String>(
            child: Text("FeedBack"), value: '5',
          ),
          PopupMenuItem<String>(
            child: Text('Our Story'), value: '6',
          ),
          PopupMenuItem<String>(
            child: Row(
              children: [
                MouseRegion(
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
                      "Login",
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
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUpPage())
                    );
                    Get.toNamed("/signup");
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff5e72e4)
                  ),
                )
              ],
            ),
          )
        ],
        elevation: 4.0
    )
        .then<void>((String? itemSelected) {

      if (itemSelected == null) return;

      if(itemSelected == "1"){
        Get.toNamed("/home");
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));

      }else if(itemSelected == "2"){
        Get.toNamed("/home");
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));

      }else if(itemSelected == "3"){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
      } else if(itemSelected == "4"){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
      }else if(itemSelected == "5"){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
      }else if(itemSelected == "6"){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
      }

    });

  }
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
          Text(
            "Menu",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Color(0xff4f76f6),
                fontSize: 16
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            child: Icon(Icons.menu_sharp,
              color: Color(0xff4776f6),
            ),
            onTapDown: (details) => showPopUpMenuAtTap(context, details),
          ),
        ],
      ),
    );
  }
}
