import 'package:flutter/material.dart';
import 'package:flutterweb/screens/loginPage.dart';
import 'package:flutterweb/screens/signupPage.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallAppBar extends StatefulWidget {
  const SmallAppBar({Key? key}) : super(key: key);

  @override
  State<SmallAppBar> createState() => _SmallAppBarState();
}

class _SmallAppBarState extends State<SmallAppBar> {
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
  showPopupMenu(){
    showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(25.0, 25.0, 0.0, 0.0),
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
              OutlinedButton(onPressed: (){},
                  child: Text('Login'),),
              ElevatedButton(
                  onPressed: (){},
                  child: Text('Sign Up')
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
                    onPressed: (){Navigator.of(context).push(
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
                  onPressed: (){Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignUpPage())
                  );
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
