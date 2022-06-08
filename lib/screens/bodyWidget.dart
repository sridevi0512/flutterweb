import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/logo.png",
                width: 200,
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                  onPressed: (){},
                  child: Text(
                    "How it works",
                    style: TextStyle(
                        color: Color(0xff2b2b35),
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  )
              ),
            ),
            SizedBox(width: 5),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                  onPressed: (){},
                  child: Text(
                    "Courses",
                    style: TextStyle(
                        color: Color(0xff2b2b35),
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  )),
            ),
            SizedBox(width: 5),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                  onPressed: (){},
                  child: Text(
                    "Benefits",
                    style: TextStyle(
                        color: Color(0xff2b2b35),
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  )),
            ),
            SizedBox(width: 5),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                  onPressed: (){},
                  child: Text(
                    "Plans",
                    style: TextStyle(
                        color: Color(0xff2b2b35),
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  )),
            ),
            SizedBox(width: 5),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                  onPressed: (){},
                  child: Text(
                    "Feedback",
                    style: TextStyle(
                        color: Color(0xff2b2b35),
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  )),
            ),
            SizedBox(width: 5),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                  onPressed: (){},
                  child: Text(
                    "Our story",
                    style: TextStyle(
                        color: Color(0xff2b2b35),
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  )),
            ),
            SizedBox(width: 5),
            Padding(
              padding: EdgeInsets.all(10),
              child: MouseRegion(
                onHover: _updateLocation,
                onExit: _incrementExit,
                child: OutlinedButton(
                  onPressed: (){},
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
                  ),),
              ),
            ),
            SizedBox(width: 10),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: (){},
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff007bff)
                ),),
            )

          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height /4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                "Your",
                                style: GoogleFonts.poppins(
                                    textStyle: Theme.of(context).textTheme.headline2,
                                    color: Color(0xff2b2b35),
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "pocket",
                                style: GoogleFonts.kalam(
                                  textStyle: Theme.of(context).textTheme.headline2,
                                  color: Color(0xff4f76f6),
                                  fontWeight: FontWeight.w400,
                                ),

                              ),
                            ),

                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20,right: 20),
                          child: Text(
                            "transformation",
                            style: GoogleFonts.poppins(
                                textStyle: Theme.of(context).textTheme.headline2,
                                color: Color(0xff2b2b35),
                                fontWeight: FontWeight.w700
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.only(left: 20,right: 20),
                          child: Text(
                            "Hypnoseed is set up to create a personalised self \n"
                                "managing practice to seed supportive ways \n"
                                "of being in a discreet and effective way.",
                            style: GoogleFonts.poppins(
                                color: Color(0xff56565E),
                                fontSize: 16
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: EdgeInsets.only(left: 20,right: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: ConstrainedBox(
                              constraints: BoxConstraints.tightFor(width: 130, height: 50),
                              child: ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff4F76F6),
                                ),
                                child: Text(
                                  "Join for free",

                                  style: GoogleFonts.poppins(
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Image.asset(
                          "assets/images/yoga.jpg"
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 300,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(width: 2, color: Color(0xff6585ED))
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding:EdgeInsets.all(20),
                          child: Image.asset(
                            "assets/images/play.png",
                            width: 30,
                            height: 30,
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Psychic Number",
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            ),
                            Text(
                              "0.10                     0.20",
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                            Slider(
                              value: valueHolder.toDouble(),
                              min: 1,
                              max: 100,
                              divisions: 100,
                              activeColor: Color(0xff007db5),
                              inactiveColor: Color(0xff007db5),
                              onChanged: (double newValue) {
                                setState(() {
                                  valueHolder = newValue.round();
                                });
                              },

                            )
                          ],
                        )
                      ],
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
