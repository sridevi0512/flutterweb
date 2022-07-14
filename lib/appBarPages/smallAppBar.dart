import 'package:flutter/material.dart';
import 'package:flutterweb/screens/loginPage.dart';
import 'package:flutterweb/screens/signupPage.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SmallAppBar extends StatefulWidget implements PreferredSizeWidget {
  GlobalKey? dtkey;
  GlobalKey<State<StatefulWidget>>? courseDataKey;
  GlobalKey<State<StatefulWidget>>? benefitDataKey;
  GlobalKey<State<StatefulWidget>>? plansDataKey;
  GlobalKey<State<StatefulWidget>>? feedbackDataKey;
  GlobalKey<State<StatefulWidget>>? storyDataKey;
  Size preferredSize;

  SmallAppBar({Key? key,
    this.dtkey,
    this.courseDataKey,
    this.benefitDataKey,
    this.plansDataKey,
    this.feedbackDataKey,
    this.storyDataKey
  }) :
        preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  State<SmallAppBar> createState() => _SmallAppBarState();
}

class _SmallAppBarState extends State<SmallAppBar> {

  SharedPreferences? _preferences;
  var user_token;
  int valueHolder = 10;
  Color bgColor = Colors.white;
  Color textColor = Color(0xff4F76F6);
  double x = 0.0;
  double y = 0.0;

  _showPopupMenu(Offset offset,BuildContext context) async {
    double left = offset.dx;
    double top = offset.dy;
    showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(left, top, 20.0, 0.0),
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
        logout();
        Get.toNamed("/login");
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));

      }else{
        //code here
      }

    });
  }

  logout() async{
    _preferences = await SharedPreferences.getInstance();
    _preferences!.clear();
  }

  @override
  void initState() {
    // TODO: implement initState
    getToken();
    super.initState();
  }

  getToken() async {
    _preferences = await SharedPreferences.getInstance();
    setState((){
      user_token = _preferences!.getString("user_token");
      print("userToken: ${_preferences!.getString("user_token")}");
    });
  }


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
                (user_token != null)?
                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.notifications_rounded,
                    size: 25,
                  ),

                ):
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
                (user_token != null)?
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
        Scrollable.ensureVisible(this.widget.dtkey!.currentContext!);
      }else if(itemSelected == "2"){
        Get.toNamed("/home");
        Scrollable.ensureVisible(this.widget.courseDataKey!.currentContext!);
      }else if(itemSelected == "3"){
        Scrollable.ensureVisible(this.widget.benefitDataKey!.currentContext!);

      } else if(itemSelected == "4"){
        Scrollable.ensureVisible(this.widget.plansDataKey!.currentContext!);

      }else if(itemSelected == "5"){
        Scrollable.ensureVisible(this.widget.feedbackDataKey!.currentContext!);

      }else if(itemSelected == "6"){
        Scrollable.ensureVisible(this.widget.storyDataKey!.currentContext!);
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
