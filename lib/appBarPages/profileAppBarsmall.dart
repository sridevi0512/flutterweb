import 'package:flutter/material.dart';
import 'package:flutterweb/screens/loginPage.dart';
import 'package:flutterweb/screens/signupPage.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/homePage.dart';

class ProfileAppBarSmallPage extends StatefulWidget implements PreferredSizeWidget {

  Size preferredSize;

  ProfileAppBarSmallPage({Key? key,

  }) :
        preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  State<ProfileAppBarSmallPage> createState() => _ProfileAppBarSmallPageState();
}

class _ProfileAppBarSmallPageState extends State<ProfileAppBarSmallPage> {
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
            child: Text("My transformation"), value: '1',
          ),
          PopupMenuItem<String>(
            child: Text("Iching"), value: '2',
          ),
          PopupMenuItem<String>(
            child: Text("Profile friends"), value: '3',
          ),
          PopupMenuItem<String>(
            child: Text("Meridian Diagnosis"), value: '4',
          ),
          PopupMenuItem<String>(
            child: Text("Blog"), value: '5',
          ),
          PopupMenuItem<String>(
            child: Row(
              children: [
                IconButton(
                    onPressed: (){},
                    icon: Icon(
                        Icons.notifications
                    )),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: (){},
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/placeholder.png"),
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

      }else if(itemSelected == "2"){

      }else if(itemSelected == "3"){

      } else if(itemSelected == "4"){

      }else if(itemSelected == "5"){

      }else if(itemSelected == "6"){

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
