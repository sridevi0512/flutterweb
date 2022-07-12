
import 'dart:ui';
import 'dart:js';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/screens/loginPage.dart';
import 'package:flutterweb/screens/signupPage.dart';
import 'package:flutterweb/utils/constant.dart';
import 'package:flutterweb/utils/preference.dart';
import 'package:get/get.dart';

import 'homePage.dart';
import '../model/appbarmenuItem.dart';

final GlobalKey _menuKey = GlobalKey();

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  GlobalKey<State<StatefulWidget>>? dataKey;
  GlobalKey<State<StatefulWidget>>? courseDataKey;
  GlobalKey<State<StatefulWidget>>? benefitDataKey;
  GlobalKey<State<StatefulWidget>>? plansDataKey;
  GlobalKey<State<StatefulWidget>>? feedbackDataKey;
  GlobalKey<State<StatefulWidget>>? storyDataKey;
  Size preferredSize;

  _showPopupMenu(Offset offset,BuildContext context) async {
    double left = offset.dx;
    double top = offset.dy;
    showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(left, top, 20.0, 0.0),      //position where you want to show the menu on screen
      items: [
        PopupMenuItem<String>(
            child: const Text('My Account'), value: '1'),
        PopupMenuItem<String>(
            child: const Text('Logout'), value: '2'),

      ],
      elevation: 8.0,
    )
        .then<void>((String? itemSelected) {

      if (itemSelected == null) return;

      if(itemSelected == "1"){
        print("click 1");
      }else if(itemSelected == "2"){
        print("click 2");
      }else{
        //code here
      }

    });
  }

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
          (Preference.getUserToken(Constants.USER_TOKEN) != null)?
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.notifications_rounded,
              size: 25,
            ),

          ):
          LoginButton(
            text: "Login",
            press: (){
              Get.toNamed("/login");
              print("****press*****");
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoginPage())
              );
            },
          ),
          Spacer(),
          (Preference.getUserToken(Constants.USER_TOKEN)!= null)?
          GestureDetector(
            onTapDown: (TapDownDetails details) {
              _showPopupMenu(details.globalPosition,context);
            },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  'assets/images/placeholder.png',
                ),
                child: const SizedBox.shrink(),
              ),
            ),
          ):
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Signup(
              text: "SignUp",
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

class MenuItem {
  final String text;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [home, share, settings];
  static const List<MenuItem> secondItems = [logout];

  static const home = MenuItem(text: 'Home', icon: Icons.home);
  static const share = MenuItem(text: 'Share', icon: Icons.share);
  static const settings = MenuItem(text: 'Settings', icon: Icons.settings);
  static const logout = MenuItem(text: 'Log Out', icon: Icons.logout);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(
            item.icon,
            color: Colors.white,
            size: 22
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  static onChanged( MenuItem item) {
    switch (item) {
      case MenuItems.home:
      //Do something
        break;
      case MenuItems.settings:
      //Do something
        break;
      case MenuItems.share:
      //Do something
        break;
      case MenuItems.logout:
      //Do something
        break;
    }
  }
}





