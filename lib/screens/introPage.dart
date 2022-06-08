import 'package:flutter/material.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
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
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Scaffold(
            body:
            (ResponsiveWidget.isSmallScreen(context))?
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Your",
                              style: GoogleFonts.poppins(
                                  textStyle: Theme.of(context).textTheme.headline4,
                                  color: Color(0xff2b2b35),
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            TextSpan(
                              text: " pocket",
                              style: GoogleFonts.kalam(
                                textStyle: Theme.of(context).textTheme.headline3,
                                color: Color(0xff4f76f6),
                                fontWeight: FontWeight.w400,
                              ),

                            )
                          ]
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    child: Text(
                      "transformation",
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.headline4,
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
                      alignment: Alignment.topCenter,
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
                  ),
                  // Container(child: Spacer()),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: AssetImage("assets/images/yoga.jpg"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(width: 2, color: Color(0xff6585ED))
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding:EdgeInsets.all(10),
                              child: Image.asset(
                                "assets/images/play.png",
                                width: 30,
                                height: 30,
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "Psychic Number",
                                    style: TextStyle(
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width/3,
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Row(
                                          children: [
                                            Text(
                                              "0.10",
                                              style: GoogleFonts.poppins(
                                                color: Colors.black
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              "0.20",
                                              style: GoogleFonts.poppins(
                                                  color: Colors.black
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    height: 12,
                                    child: Slider(
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

                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                    ),
                  )
                ],
              ),
            ):
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Your",
                                        style: GoogleFonts.poppins(
                                            textStyle: Theme.of(context).textTheme.headline2,
                                            color: Color(0xff2b2b35),
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                      TextSpan(
                                        text: " pocket",
                                        style: GoogleFonts.kalam(
                                          textStyle: Theme.of(context).textTheme.headline2,
                                          color: Color(0xff4f76f6),
                                          fontWeight: FontWeight.w400,
                                        ),

                                      )
                                    ]
                                )
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
                      ),
                      ResponsiveWidget.isLargeScreen(context)?SizedBox(
                          width: MediaQuery.of(context).size.width/4,
                          child: Container()): Container(),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: CircleAvatar(
                            radius: MediaQuery.of(context).size.width/6,
                            backgroundImage: AssetImage("assets/images/yoga.jpg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FittedBox(
                  child: Container(
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
                            ),
                          ],
                        )
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ],
    );
  }
}
