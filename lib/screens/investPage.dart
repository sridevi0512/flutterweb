import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/appBarPages/appbarAllPage.dart';
import 'package:flutterweb/screens/footorPage.dart';
import 'package:flutterweb/appBarPages/smallAppbarAllPage.dart';
import 'package:google_fonts/google_fonts.dart';

class InvestHypnoseedPage extends StatefulWidget  {
  const InvestHypnoseedPage({Key? key}) : super(key: key);

  @override
  State<InvestHypnoseedPage> createState() => _InvestHypnoseedPageState();
}

class _InvestHypnoseedPageState extends State<InvestHypnoseedPage> with TickerProviderStateMixin {

  TextEditingController _nameController = new TextEditingController();
  TextEditingController _mailController = new TextEditingController();
   TextEditingController _messageController = new TextEditingController();
   AnimationController? rotationController, rotationController1, rotationController2;
   Animation<double>? _animation, _animation1, _animation2;
   bool _isFirstsm = false;
   bool _isSecondsm = false;
   bool _isThirdsm = false;

  int valueHolder = 10;
  double x = 0.0;
  double y = 0.0;
  String img = "assets/images/twitter1.png";
  String img1 = "assets/images/link1.png";
  String img2 = "assets/images/facebook1.png";

  void _update(PointerEvent details) {
    setState(() {
      _isFirstsm = true;
      img = "assets/images/twitter.png";
      rotation();
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  void _update1(PointerEvent details) {
    setState(() {
      _isSecondsm = true;
      img1 = "assets/images/link.png";
      rotation1();
      x = details.position.dx;
      y = details.position.dy;
    });
  }
  void _update2(PointerEvent details) {
    setState(() {
      _isThirdsm = true;
      img2 = "assets/images/facebook.png";
      rotation2();
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  void _incrementExit(PointerEvent detail) {
    setState(() {

       img =  "assets/images/twitter1.png";
    });
  }
  void _incrementExit1(PointerEvent detail) {
    setState(() {
       img1 =  "assets/images/link1.png";

    });
  }
  void _incrementExit2(PointerEvent detail) {
    setState(() {
       img2 =  "assets/images/facebook1.png";

    });
  }

  rotation() {

    rotationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: false);

    _animation = CurvedAnimation(
      parent: rotationController!,
      curve: Curves.easeIn,
    );
    rotationController!.forward(from: 0.0);

  }

  rotation1() {
    rotationController1 = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: false);

    _animation1 = CurvedAnimation(
      parent: rotationController1!,
      curve: Curves.easeIn,
    );
    rotationController1!.forward(from: 0.0);
  }

  rotation2() {
    rotationController2 = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: false);

    _animation2 = CurvedAnimation(
      parent: rotationController2!,
      curve: Curves.easeIn,
    );
    rotationController2!.forward(from: 0.0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    rotationController!.dispose();
    rotationController1!.dispose();
    rotationController2!.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: (ResponsiveWidget.isSmallScreen(context) ||
          ResponsiveWidget.isMediumScreen(context))? SmallAppBarAllPage() : AppBarAllPages(),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Color(0xff2b2b35),
                  child: Column(
                    children: [
                      Container(
                        color: Color(0xff2b2b35),
                        height: MediaQuery.of(context).size.height/3,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Invest In Hypnoseed",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "Hypnoseed is looking for investors who "
                                    "\nare interested in helping us to grow",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19
                                ),
                              ),
                              SizedBox(height: 10),
                              Image.asset(
                                "assets/images/investpic.png",
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Opportunities",
                                style: GoogleFonts.poppins(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Card(
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Image.asset(
                                            "assets/images/investsym1.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 10),
                                          child: Text(
                                            "For you as an investor",
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                        child: Text(
                                          "Hypnoseed is registered as an SEIS HMRC U.K. tax relief"
                                              "\nbusiness opportunity for digital start ups.",
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14
                                          ),
                                        ),),
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Text(
                                            "As an investor you can claim up to 50% of your investment to be "
                                                "\nclaimed back in income tax relief and offering significant capital "
                                                "\ngains tax reductions, amongst other things.",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Card(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Image.asset(
                                            "assets/images/investsym2.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 10),
                                          child: Text(
                                            "Minimal risk, Maximum gain",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                          child: Text(
                                            "Its an exciting time to join the Hypnoseed journey as it's "
                                                "\nlaunched. The hard work is done creating the content, as well as "
                                                "\ndesigning the user experience and interface.",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Text(
                                            "In this time you can clearly see what Hypnoseed is offering, with "
                                                "\nthe potential to grow and create more relevant content.",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                              SizedBox(height: 20),
                              Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: Color(0xfff8f8ff),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 10),
                                    Text(
                                      "Write us to find out details",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Color(0xff121212)
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "Philip Cooper, the Hypnoseed founder, would love to connect "
                                          "\nwith you and share his vision.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                        color: Color(0xff2b2b35)
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Your name *",
                                                  style: GoogleFonts.poppins(
                                                    color: Color(0xff525f7f),
                                                    fontSize: 10
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Container(
                                                  width: 350,
                                                  height: 30,
                                                  child: TextFormField(
                                                    controller: _nameController,
                                                    cursorColor: Colors.black,
                                                    decoration: InputDecoration(
                                                        isDense: true,
                                                      contentPadding: EdgeInsets.symmetric(vertical: 7,horizontal: 5),
                                                      border: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Color(0xffe5eafe),
                                                          width: 2
                                                        )
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors.black,
                                                          width: 2
                                                        )
                                                      ),
                                                      hintText: 'john',
                                                      hintStyle: GoogleFonts.poppins(
                                                        color: Colors.grey,
                                                        fontSize: 12
                                                      ),
                                                      labelStyle: GoogleFonts.poppins(
                                                        fontSize: 12
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(width: 20),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Email address *",
                                                  style: GoogleFonts.poppins(
                                                      color: Color(0xff525f7f),
                                                      fontSize: 10
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Container(
                                                  width: 350,
                                                  height: 30,
                                                  child: TextFormField(
                                                    controller: _mailController,
                                                    cursorColor: Colors.black,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      contentPadding: EdgeInsets.symmetric(vertical: 7,horizontal: 5),
                                                      border: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(0xffe5eafe),
                                                              width: 2
                                                          )
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors.black,
                                                              width: 2
                                                          )
                                                      ),
                                                      hintText: 'example@gmail.com',
                                                      hintStyle: GoogleFonts.poppins(
                                                          color: Colors.grey,
                                                          fontSize: 12
                                                      ),
                                                      labelStyle: GoogleFonts.poppins(
                                                          fontSize: 12
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )

                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Your message * ",
                                                  style: GoogleFonts.poppins(
                                                      color: Color(0xff525f7f),
                                                      fontSize: 10
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Container(
                                                  width: MediaQuery.of(context).size.width/2.2,
                                                  height: MediaQuery.of(context).size.height/5,
                                                  child: TextField(
                                                    textAlignVertical: TextAlignVertical.center,
                                                    controller: _messageController,
                                                    cursorColor: Colors.black,
                                                    maxLines: null,
                                                    minLines: null,
                                                    expands: true,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      contentPadding: EdgeInsets.symmetric(vertical: 7,horizontal: 5),
                                                      border: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(0xffe5eafe),
                                                              width: 2
                                                          )
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors.black,
                                                              width: 2
                                                          )
                                                      ),
                                                      hintText: 'Write the message here',
                                                      hintStyle: GoogleFonts.poppins(
                                                          color: Colors.grey,
                                                          fontSize: 12
                                                      ),
                                                      labelStyle: GoogleFonts.poppins(
                                                          fontSize: 12
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        ConstrainedBox(
                                          constraints: BoxConstraints.tightFor(width: 150, height: 40),
                                          child: ElevatedButton(
                                              onPressed: (){},
                                              child: Text(
                                                "Submit",
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600
                                                ),
                                              ),
                                          style: ElevatedButton.styleFrom(
                                           primary: Colors.black,
                                            padding: EdgeInsets.all(10)
                                          ),
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "share article",
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff56565e),
                                                fontSize: 16
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            MouseRegion(
                                              onHover: _update,
                                              onExit: _incrementExit,
                                              child:
                                              (_isFirstsm != true)?
                                                  Image.asset(
                                                    img,
                                                    height: 32,
                                                    width: 32,
                                                  ):
                                              RotationTransition(
                                                turns: _animation!,
                                                child: Image.asset(
                                                  img,
                                                  height: 32,
                                                  width: 32,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            MouseRegion(
                                              onHover: _update1,
                                              onExit: _incrementExit1,
                                              child:
                                              (_isSecondsm != true)?
                                              Image.asset(
                                                img1,
                                                height: 32,
                                                width: 32,
                                              ):
                                              RotationTransition(
                                                turns: _animation1!,
                                                child: Image.asset(
                                                  img1,
                                                  height: 32,
                                                  width: 32,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            MouseRegion(
                                              onHover: _update2,
                                              onExit: _incrementExit2,
                                              child:
                                              (_isThirdsm != true)?
                                              Image.asset(
                                                img2,
                                                height: 32,
                                                width: 32,
                                              ):
                                              RotationTransition(
                                                turns: _animation2!,
                                                child: Image.asset(
                                                      img2,
                                                      height: 32,
                                                      width: 32,
                                                    ),
                                              )
                                            )

                                          ],
                                        ),

                                      ],
                                    ),
                                  ],

                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FooterPage()
              ],
            ),
          ),
        ) );
  }
}
