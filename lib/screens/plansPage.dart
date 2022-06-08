import 'package:flutter/material.dart';
import 'package:flutterweb/model/seedPlansModel.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class PlansPage extends StatefulWidget {
  const PlansPage({Key? key}) : super(key: key);

  @override
  State<PlansPage> createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
  List<SeedPlans> seedplans = [];
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
  void initState() {
    // TODO: implement initState
    seedplans = [
      SeedPlans(title: "5-day plan  ", description: "25 calls included", price: "7"),
      SeedPlans(title: "7-day plan  ", description: "25 calls included", price: "9"),
      SeedPlans(title: "10-day plan  ", description: "25 calls included", price: "10"),
      SeedPlans(title: "21-day plan  ", description: "25 calls included", price: "13")
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body:
        (ResponsiveWidget.isSmallScreen(context))?
        Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage("assets/images/pic.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "plans".toUpperCase(),
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color(0xff2b2b35),
                              fontWeight: FontWeight.w600

                          ),
                        ),
                        Text(
                          "Choose one of the packages",
                          style: GoogleFonts.poppins(
                              fontSize: 36,
                              color: Color(0xff2b2b35),
                              fontWeight: FontWeight.w600

                          ),
                        ),
                        Text(
                          ",,,Depending on your needs",
                          style: GoogleFonts.kalam(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff4f76f6),
                              fontSize: 26
                          ),
                        ),
                        Text(
                          "Learning new skills takes practice and patience. Hypnoseed takes the effort out, with"
                              "\nsimple proven techniques to let you choose and manage your path to accept, grow"
                              "\nand transform",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color(0xff56565e),
                              fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),
                  ),
                  //free plans
                  SizedBox(height: 20),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Free",
                            style: GoogleFonts.poppins(
                                color: Color(0xff2b2b35),
                                fontWeight: FontWeight.w600,
                                fontSize: (ResponsiveWidget.isMediumScreen(context))? screenWidth * 0.03 :24
                            ),
                          ),
                          Text(
                            "A free package of self discovery"
                                "\nto the Oracle, a full psychic profile"
                                "\nto discover your tendencies and"
                                "\ncreate your first self suggestion"
                                "\nmantra, plus the Iching and profile"
                                "\nfriends",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff121212),
                            ),
                          ),
                          SizedBox(height: 20),
                          RichText(
                              text: TextSpan(
                                  text: '\u{00A3} 0',
                                  style: Theme.of(context).textTheme.headline2?.merge(
                                      GoogleFonts.poppins(
                                          color: Color(0xff4f76f6),
                                          fontWeight: FontWeight.w700
                                      )
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "/ month",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff4f76f6),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14
                                        )
                                    )
                                  ]
                              )
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Unlimited access to "
                                "\na free account",
                            style: GoogleFonts.poppins(
                                color: Color(0xff4f76f6),
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Included",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),
                          ),
                          SizedBox(height: 5),
                          RichText(
                              text: TextSpan(
                                  text: "\u{221A} ",
                                  style: TextStyle(
                                      color: Color(0xff4f76f6)
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Diagnostic Tests",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff56565e),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400
                                      ),
                                    )
                                  ])
                            // new String.fromCharCodes(new Runes('\u221A'))
                          ),
                          SizedBox(height: 5),
                          RichText(
                              text: TextSpan(
                                  text: "\u{221A} ",
                                  style: TextStyle(
                                      color: Color(0xff4f76f6)
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Life Path Mantra",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff56565e),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400
                                      ),
                                    )
                                  ])),
                          SizedBox(height: 5),
                          RichText(
                              text: TextSpan(
                                  text: "\u{221A} ",
                                  style: TextStyle(
                                      color: Color(0xff4f76f6)
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Tune IN",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff56565e),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400
                                      ),
                                    )
                                  ])

                          ),
                          SizedBox(height: 5),
                          RichText(
                              text: TextSpan(
                                  text: "\u{221A} ",
                                  style: TextStyle(
                                      color: Color(0xff4f76f6)
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "iching",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff56565e),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400
                                      ),
                                    )
                                  ])

                          ),
                          SizedBox(height: 5),
                          RichText(
                              text: TextSpan(
                                  text: "\u{221A} ",
                                  style: TextStyle(
                                      color: Color(0xff4f76f6)
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Profile Friends",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff56565e),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400
                                      ),
                                    )
                                  ])

                          ),
                          SizedBox(height: 5),
                          RichText(
                              text: TextSpan(
                                  text: "\u{221A} ",
                                  style: TextStyle(
                                      color: Color(0xff4f76f6)
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Meridian Diagnosis",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff56565e),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400
                                      ),
                                    )
                                  ])

                          ),
                          SizedBox(height: 30),
                          Container(
                            width: 300,
                            height: 40,
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
                          )

                        ],
                      ),
                    ),
                  ),

                  //seed plans
                  SizedBox(height: 10),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Seed",
                            style: GoogleFonts.poppins(
                                color: Color(0xff2b2b35),
                                fontWeight: FontWeight.w600,
                                fontSize: 24
                            ),
                          ),
                          Text(
                            "Learning new skills takes practice"
                                "\nand patience. Hypnoseed takes"
                                "\nthe effort out, with simple proven"
                                "\ntechniques to let you choose and"
                                "\nmanage your path to accept"
                                "\ngrow and transform",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff121212),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "The price depends"
                                "\non calls quantity",
                            style: GoogleFonts.poppins(
                                color: Color(0xff4f76f6),
                                fontSize: 18,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "One - time payment",
                            style: GoogleFonts.poppins(
                                color: Color(0xff4f76f6),
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Included",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),
                          ),
                          SizedBox(height: 5),
                          RichText(
                              text: TextSpan(
                                  text: "\u{221A} ",
                                  style: TextStyle(
                                      color: Color(0xff4f76f6)
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Diagnostic Tests",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff56565e),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400
                                      ),
                                    )
                                  ])
                          ),
                          SizedBox(height: 5),
                          RichText(
                              text: TextSpan(
                                  text: "\u{221A} ",
                                  style: TextStyle(
                                      color: Color(0xff4f76f6)
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Life Path Mantra",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff56565e),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400
                                      ),
                                    )
                                  ])),
                          SizedBox(height: 5),
                          RichText(
                              text: TextSpan(
                                  text: "\u{221A} ",
                                  style: TextStyle(
                                      color: Color(0xff4f76f6)
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Tune IN",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff56565e),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400
                                      ),
                                    )
                                  ])

                          ),
                          SizedBox(height: 5),
                          RichText(
                              text: TextSpan(
                                  text: "\u{221A} ",
                                  style: TextStyle(
                                      color: Color(0xff4f76f6)
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "iching",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff56565e),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400
                                      ),
                                    )
                                  ])

                          ),
                          SizedBox(height: 5),
                          RichText(
                              text: TextSpan(
                                  text: "\u{221A} ",
                                  style: TextStyle(
                                      color: Color(0xff4f76f6)
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Profile Friends",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff56565e),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400
                                      ),
                                    )
                                  ])

                          ),
                          SizedBox(height: 5),
                          RichText(
                              text: TextSpan(
                                  text: "\u{221A} ",
                                  style: TextStyle(
                                      color: Color(0xff4f76f6)
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Meridian Diagnosis",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff56565e),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400
                                      ),
                                    )
                                  ])

                          ),
                          SizedBox(height: 20),
                          Text(
                            "Bundles",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            // width: 250,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                itemCount: seedplans.length,
                                itemBuilder: (BuildContext context, int index){
                                  return _buildSeedPlansModelList(seedplans[index]);
                                },

                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  //zen master
                  SizedBox(height: 10),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 3,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Zen Master",
                                style: GoogleFonts.poppins(
                                    color: Color(0xff2b2b35),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24
                                ),
                              ),
                              Text(
                                "A subscription for self mastery,"
                                    "\nbuilding a foundation of"
                                    "\nmindfulness to self manage"
                                    "\nmental performance and master"
                                    "\nthe art of self instruction.",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff121212),
                                ),
                              ),
                              SizedBox(height: 20),
                              RichText(
                                  text: TextSpan(
                                      text: '\u{00A3} 7',
                                      style: Theme.of(context).textTheme.headline2?.merge(
                                          GoogleFonts.poppins(
                                              color: Color(0xff4f76f6),
                                              fontWeight: FontWeight.w700
                                          )
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "/ month",
                                            style: GoogleFonts.poppins(
                                                color: Color(0xff4f76f6),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14
                                            )
                                        )
                                      ]
                                  )
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Subscription",
                                style: GoogleFonts.poppins(
                                    color: Color(0xff4f76f6),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(height: 10),
                              Center(
                                child: Text(
                                  "for minimum 5 month",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff4f76f6),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Included",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18
                                ),
                              ),
                              SizedBox(height: 5),
                              RichText(
                                  text: TextSpan(
                                      text: "\u{221A} ",
                                      style: TextStyle(
                                          color: Color(0xff4f76f6)
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Diagnostic Tests",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff56565e),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400
                                          ),
                                        )
                                      ])
                              ),
                              SizedBox(height: 5),
                              RichText(
                                  text: TextSpan(
                                      text: "\u{221A} ",
                                      style: TextStyle(
                                          color: Color(0xff4f76f6)
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Life Path Mantra",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff56565e),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400
                                          ),
                                        )
                                      ])),
                              SizedBox(height: 5),
                              RichText(
                                  text: TextSpan(
                                      text: "\u{221A} ",
                                      style: TextStyle(
                                          color: Color(0xff4f76f6)
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Tune IN",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff56565e),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400
                                          ),
                                        )
                                      ])

                              ),
                              SizedBox(height: 5),
                              RichText(
                                  text: TextSpan(
                                      text: "\u{221A} ",
                                      style: TextStyle(
                                          color: Color(0xff4f76f6)
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Trigger Mindfulness",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff56565e),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400
                                          ),
                                        )
                                      ])

                              ),
                              SizedBox(height: 5),
                              RichText(
                                  text: TextSpan(
                                      text: "\u{221A} ",
                                      style: TextStyle(
                                          color: Color(0xff4f76f6)
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Suggestion Analyst",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff56565e),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400
                                          ),
                                        )
                                      ])

                              ),
                              SizedBox(height: 5),
                              RichText(
                                  text: TextSpan(
                                      text: "\u{221A} ",
                                      style: TextStyle(
                                          color: Color(0xff4f76f6)
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Iching",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff56565e),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400
                                          ),
                                        )
                                      ])

                              ),
                              SizedBox(height: 5),
                              RichText(
                                  text: TextSpan(
                                      text: "\u{221A} ",
                                      style: TextStyle(
                                          color: Color(0xff4f76f6)
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Profile Friends",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff56565e),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400
                                          ),
                                        )
                                      ])
                                // new String.fromCharCodes(new Runes('\u221A'))
                              ),
                              SizedBox(height: 5),
                              RichText(
                                  text: TextSpan(
                                      text: "\u{221A} ",
                                      style: TextStyle(
                                          color: Color(0xff4f76f6)
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Meridian Diagnosis",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff56565e),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400
                                          ),
                                        )
                                      ])
                              ),
                              SizedBox(height: 5),
                              RichText(
                                  text: TextSpan(
                                      text: "\u{221A} ",
                                      style: TextStyle(
                                          color: Color(0xff4f76f6)
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Fixed amount of calls per month",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff56565e),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400
                                          ),
                                        )
                                      ])
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "5-month"
                                        "\nsubscription",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '\u{00A3} ${35}',
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff4f76f6),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "1-year"
                                        "\nsubscription",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '\u{00A3} ${84}',
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff4f76f6),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 20),
                              Center(
                                child: Container(
                                  width: 300,
                                  height: 40,
                                  child: ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff4F76F6),
                                    ),
                                    child: Text(
                                      "Join Now",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              )

                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Color(0xffe5eafe),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ) // green shaped
                            ),
                            child: Text("Most Popular",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff4f76f6),
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal
                              ),),
                          ),
                        )
                      ],
                    ),
                  ),

                  //fast track
                  SizedBox(height: 10),
                  Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Fast Track",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff2b2b35),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24
                              ),
                            ),
                            Text(
                              "Quick relief for immediate"
                                  "\nremedy, insightful transformation"
                                  "\nto discover your tendencies and"
                                  "\nfor seeding specific new ways of"
                                  "\nbeing",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff121212),
                              ),
                            ),
                            SizedBox(height: 20),
                            RichText(
                                text: TextSpan(
                                    text: '\u{00A3} 43',
                                    style: Theme.of(context).textTheme.headline2?.merge(
                                        GoogleFonts.poppins(
                                            color: Color(0xff4f76f6),
                                            fontWeight: FontWeight.w700
                                        )
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: "/ month",
                                          style: GoogleFonts.poppins(
                                              color: Color(0xff4f76f6),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14
                                          )
                                      )
                                    ]
                                )
                            ),
                            SizedBox(height: 20),
                            Text(
                              "One- time payment"
                                  "\nfor 2 month",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff4f76f6),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Included",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18
                              ),
                            ),
                            SizedBox(height: 5),
                            RichText(
                                text: TextSpan(
                                    text: "\u{221A} ",
                                    style: TextStyle(
                                        color: Color(0xff4f76f6)
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Diagnostic Tests",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff56565e),
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )
                                    ])
                              // new String.fromCharCodes(new Runes('\u221A'))
                            ),
                            SizedBox(height: 5),
                            RichText(
                                text: TextSpan(
                                    text: "\u{221A} ",
                                    style: TextStyle(
                                        color: Color(0xff4f76f6)
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Life Path Mantra",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff56565e),
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )
                                    ])),
                            SizedBox(height: 5),
                            RichText(
                                text: TextSpan(
                                    text: "\u{221A} ",
                                    style: TextStyle(
                                        color: Color(0xff4f76f6)
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Tune IN",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff56565e),
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )
                                    ])

                            ),
                            SizedBox(height: 5),
                            RichText(
                                text: TextSpan(
                                    text: "\u{221A} ",
                                    style: TextStyle(
                                        color: Color(0xff4f76f6)
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Trigger Mindfulness",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff56565e),
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )
                                    ])

                            ),
                            SizedBox(height: 5),
                            RichText(
                                text: TextSpan(
                                    text: "\u{221A} ",
                                    style: TextStyle(
                                        color: Color(0xff4f76f6)
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Suggestion Analyst",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff56565e),
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )
                                    ])

                            ),
                            SizedBox(height: 5),
                            RichText(
                                text: TextSpan(
                                    text: "\u{221A} ",
                                    style: TextStyle(
                                        color: Color(0xff4f76f6)
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Iching",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff56565e),
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )
                                    ])

                            ),
                            SizedBox(height: 5),
                            RichText(
                                text: TextSpan(
                                    text: "\u{221A} ",
                                    style: TextStyle(
                                        color: Color(0xff4f76f6)
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Profile Friends",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff56565e),
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )
                                    ])

                            ),
                            SizedBox(height: 5),
                            RichText(
                                text: TextSpan(
                                    text: "\u{221A} ",
                                    style: TextStyle(
                                        color: Color(0xff4f76f6)
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Meridian Diagnosis",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff56565e),
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )
                                    ])

                            ),
                            SizedBox(height: 5),
                            RichText(
                                text: TextSpan(
                                    text: "\u{221A} ",
                                    style: TextStyle(
                                        color: Color(0xff4f76f6)
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Fixed amount of calls per month",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff56565e),
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )
                                    ])

                            ),
                            SizedBox(height: 5),
                            RichText(
                                text: TextSpan(
                                    text: "\u{221A} ",
                                    style: TextStyle(
                                        color: Color(0xff4f76f6)
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "One call with Philip included",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff56565e),
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )
                                    ])

                            ),
                            SizedBox(height: 30),
                            Container(
                              width: 300,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff4F76F6),
                                ),
                                child: Text(
                                  "Join Now",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                              color: Color(0xffd3d3d3),
                              blurRadius: 20
                          )
                        ]
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
        :Container(
         child: SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.all(20),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children: [
                     CircleAvatar(
                       radius: 75,
                       backgroundImage: AssetImage("assets/images/pic.png"),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(20),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "plans".toUpperCase(),
                             style: GoogleFonts.poppins(
                               fontSize: 16,
                               color: Color(0xff2b2b35),
                               fontWeight: FontWeight.w600

                             ),
                           ),
                           Text(
                             "Choose one of the packages",
                             style: GoogleFonts.poppins(
                                 fontSize: 36,
                                 color: Color(0xff2b2b35),
                                 fontWeight: FontWeight.w600

                             ),
                           ),
                           Text(
                             ",,,Depending on your needs",
                             style: GoogleFonts.kalam(
                               fontWeight: FontWeight.w400,
                               color: Color(0xff4f76f6),
                               fontSize: 26
                             ),
                           ),
                           Text(
                             "Learning new skills takes practice and patience. Hypnoseed takes the effort out, with"
                                 "\nsimple proven techniques to let you choose and manage your path to accept, grow"
                                 "\nand transform",
                             style: GoogleFonts.poppins(
                               fontSize: 16,
                               color: Color(0xff56565e),
                               fontWeight: FontWeight.w400
                             ),
                           )
                         ],
                       ),
                     ),
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     //free plans
                     Flexible(
                       child: Card(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(20.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(
                                 "Free",
                                 style: GoogleFonts.poppins(
                                   color: Color(0xff2b2b35),
                                   fontWeight: FontWeight.w600,
                                   fontSize: (ResponsiveWidget.isMediumScreen(context))? screenWidth * 0.03 :24
                                 ),
                               ),
                               Text(
                                 "A free package of self discovery"
                                     "\nto the Oracle, a full psychic profile"
                                     "\nto discover your tendencies and"
                                     "\ncreate your first self suggestion"
                                     "\nmantra, plus the Iching and profile"
                                     "\nfriends",
                                 style: GoogleFonts.poppins(
                                   fontSize: 14,
                                   fontWeight: FontWeight.w400,
                                   color: Color(0xff121212),
                                 ),
                               ),
                               SizedBox(height: 20),
                               RichText(
                                 text: TextSpan(
                                   text: '\u{00A3} 0',
                                 style: Theme.of(context).textTheme.headline2?.merge(
                                   GoogleFonts.poppins(
                                     color: Color(0xff4f76f6),
                                     fontWeight: FontWeight.w700
                                   )
                                 ),
                                   children: <TextSpan>[
                                     TextSpan(
                                       text: "/ month",
                                       style: GoogleFonts.poppins(
                                         color: Color(0xff4f76f6),
                                         fontWeight: FontWeight.w600,
                                         fontSize: 14
                                       )
                                     )
                                   ]
                               )
                               ),
                               SizedBox(height: 20),
                               Text(
                                 "Unlimited access to "
                                     "\na free account",
                                 style: GoogleFonts.poppins(
                                   color: Color(0xff4f76f6),
                                   fontSize: 14,
                                   fontWeight: FontWeight.w400
                                 ),
                               ),
                               SizedBox(height: 20),
                               Text(
                                 "Included",
                                 style: GoogleFonts.poppins(
                                   color: Colors.black,
                                   fontWeight: FontWeight.w600,
                                   fontSize: 18
                                 ),
                               ),
                             SizedBox(height: 5),
                             RichText(
                               text: TextSpan(
                                   text: "\u{221A} ",
                               style: TextStyle(
                                 color: Color(0xff4f76f6)
                               ),
                               children: <TextSpan>[
                                 TextSpan(
                                   text: "Diagnostic Tests",
                                   style: TextStyle(
                                       fontSize: 14,
                                       color: Color(0xff56565e),
                                       fontStyle: FontStyle.normal,
                                       fontWeight: FontWeight.w400
                                   ),
                                 )
                               ])
                                 // new String.fromCharCodes(new Runes('\u221A'))
                             ),
                               SizedBox(height: 5),
                               RichText(
                                   text: TextSpan(
                                       text: "\u{221A} ",
                                       style: TextStyle(
                                           color: Color(0xff4f76f6)
                                       ),
                                       children: <TextSpan>[
                                         TextSpan(
                                           text: "Life Path Mantra",
                                           style: TextStyle(
                                               fontSize: 14,
                                               color: Color(0xff56565e),
                                               fontStyle: FontStyle.normal,
                                               fontWeight: FontWeight.w400
                                           ),
                                         )
                                       ])),
                               SizedBox(height: 5),
                               RichText(
                                   text: TextSpan(
                                       text: "\u{221A} ",
                                       style: TextStyle(
                                           color: Color(0xff4f76f6)
                                       ),
                                       children: <TextSpan>[
                                         TextSpan(
                                           text: "Tune IN",
                                           style: TextStyle(
                                               fontSize: 14,
                                               color: Color(0xff56565e),
                                               fontStyle: FontStyle.normal,
                                               fontWeight: FontWeight.w400
                                           ),
                                         )
                                       ])

                               ),
                               SizedBox(height: 5),
                               RichText(
                                   text: TextSpan(
                                       text: "\u{221A} ",
                                       style: TextStyle(
                                           color: Color(0xff4f76f6)
                                       ),
                                       children: <TextSpan>[
                                         TextSpan(
                                           text: "iching",
                                           style: TextStyle(
                                               fontSize: 14,
                                               color: Color(0xff56565e),
                                               fontStyle: FontStyle.normal,
                                               fontWeight: FontWeight.w400
                                           ),
                                         )
                                       ])

                               ),
                               SizedBox(height: 5),
                               RichText(
                                   text: TextSpan(
                                       text: "\u{221A} ",
                                       style: TextStyle(
                                           color: Color(0xff4f76f6)
                                       ),
                                       children: <TextSpan>[
                                         TextSpan(
                                           text: "Profile Friends",
                                           style: TextStyle(
                                               fontSize: 14,
                                               color: Color(0xff56565e),
                                               fontStyle: FontStyle.normal,
                                               fontWeight: FontWeight.w400
                                           ),
                                         )
                                       ])

                               ),
                               SizedBox(height: 5),
                               RichText(
                                   text: TextSpan(
                                       text: "\u{221A} ",
                                       style: TextStyle(
                                           color: Color(0xff4f76f6)
                                       ),
                                       children: <TextSpan>[
                                         TextSpan(
                                           text: "Meridian Diagnosis",
                                           style: TextStyle(
                                               fontSize: 14,
                                               color: Color(0xff56565e),
                                               fontStyle: FontStyle.normal,
                                               fontWeight: FontWeight.w400
                                           ),
                                         )
                                       ])

                               ),
                               SizedBox(height: 30),
                               Container(
                                 width: 300,
                                 height: 40,
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
                               )

                             ],
                           ),
                         ),
                       ),
                     ),

                     //seed plans
                     Flexible(
                       child: Card(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(20.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(
                                 "Seed",
                                 style: GoogleFonts.poppins(
                                     color: Color(0xff2b2b35),
                                     fontWeight: FontWeight.w600,
                                     fontSize: 24
                                 ),
                               ),
                               Text(
                                 "Learning new skills takes practice"
                                     "\nand patience. Hypnoseed takes"
                                     "\nthe effort out, with simple proven"
                                     "\ntechniques to let you choose and"
                                     "\nmanage your path to accept"
                                     "\ngrow and transform",
                                 style: GoogleFonts.poppins(
                                   fontSize: 14,
                                   fontWeight: FontWeight.w400,
                                   color: Color(0xff121212),
                                 ),
                               ),
                               SizedBox(height: 20),
                               Text(
                                 "The price depends"
                                     "\non calls quantity",
                                 style: GoogleFonts.poppins(
                                     color: Color(0xff4f76f6),
                                     fontSize: 18,
                                     fontWeight: FontWeight.w700
                                 ),
                               ),
                               SizedBox(height: 20),
                               Text(
                                 "One - time payment",
                                 style: GoogleFonts.poppins(
                                     color: Color(0xff4f76f6),
                                     fontSize: 14,
                                     fontWeight: FontWeight.w400
                                 ),
                               ),
                               SizedBox(height: 20),
                               Text(
                                 "Included",
                                 style: GoogleFonts.poppins(
                                     color: Colors.black,
                                     fontWeight: FontWeight.w600,
                                     fontSize: 18
                                 ),
                               ),
                               SizedBox(height: 5),
                               RichText(
                                   text: TextSpan(
                                       text: "\u{221A} ",
                                       style: TextStyle(
                                           color: Color(0xff4f76f6)
                                       ),
                                       children: <TextSpan>[
                                         TextSpan(
                                           text: "Diagnostic Tests",
                                           style: TextStyle(
                                               fontSize: 14,
                                               color: Color(0xff56565e),
                                               fontStyle: FontStyle.normal,
                                               fontWeight: FontWeight.w400
                                           ),
                                         )
                                       ])
                               ),
                               SizedBox(height: 5),
                               RichText(
                                   text: TextSpan(
                                       text: "\u{221A} ",
                                       style: TextStyle(
                                           color: Color(0xff4f76f6)
                                       ),
                                       children: <TextSpan>[
                                         TextSpan(
                                           text: "Life Path Mantra",
                                           style: TextStyle(
                                               fontSize: 14,
                                               color: Color(0xff56565e),
                                               fontStyle: FontStyle.normal,
                                               fontWeight: FontWeight.w400
                                           ),
                                         )
                                       ])),
                               SizedBox(height: 5),
                               RichText(
                                   text: TextSpan(
                                       text: "\u{221A} ",
                                       style: TextStyle(
                                           color: Color(0xff4f76f6)
                                       ),
                                       children: <TextSpan>[
                                         TextSpan(
                                           text: "Tune IN",
                                           style: TextStyle(
                                               fontSize: 14,
                                               color: Color(0xff56565e),
                                               fontStyle: FontStyle.normal,
                                               fontWeight: FontWeight.w400
                                           ),
                                         )
                                       ])

                               ),
                               SizedBox(height: 5),
                               RichText(
                                   text: TextSpan(
                                       text: "\u{221A} ",
                                       style: TextStyle(
                                           color: Color(0xff4f76f6)
                                       ),
                                       children: <TextSpan>[
                                         TextSpan(
                                           text: "iching",
                                           style: TextStyle(
                                               fontSize: 14,
                                               color: Color(0xff56565e),
                                               fontStyle: FontStyle.normal,
                                               fontWeight: FontWeight.w400
                                           ),
                                         )
                                       ])

                               ),
                               SizedBox(height: 5),
                               RichText(
                                   text: TextSpan(
                                       text: "\u{221A} ",
                                       style: TextStyle(
                                           color: Color(0xff4f76f6)
                                       ),
                                       children: <TextSpan>[
                                         TextSpan(
                                           text: "Profile Friends",
                                           style: TextStyle(
                                               fontSize: 14,
                                               color: Color(0xff56565e),
                                               fontStyle: FontStyle.normal,
                                               fontWeight: FontWeight.w400
                                           ),
                                         )
                                       ])

                               ),
                               SizedBox(height: 5),
                               RichText(
                                   text: TextSpan(
                                       text: "\u{221A} ",
                                       style: TextStyle(
                                           color: Color(0xff4f76f6)
                                       ),
                                       children: <TextSpan>[
                                         TextSpan(
                                           text: "Meridian Diagnosis",
                                           style: TextStyle(
                                               fontSize: 14,
                                               color: Color(0xff56565e),
                                               fontStyle: FontStyle.normal,
                                               fontWeight: FontWeight.w400
                                           ),
                                         )
                                       ])

                               ),
                               SizedBox(height: 20),
                               Text(
                                 "Bundles",
                                 style: GoogleFonts.poppins(
                                     color: Colors.black,
                                     fontWeight: FontWeight.w600,
                                     fontSize: 18
                                 ),
                               ),
                               SizedBox(height: 10),
                               Container(
                                 // width: 250,
                                 child: Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 0.0),
                                   child: ListView.builder(
                                     scrollDirection: Axis.vertical,
                                     shrinkWrap: true,
                                     physics: BouncingScrollPhysics(),
                                     itemCount: seedplans.length,
                                     itemBuilder: (BuildContext context, int index){
                                       return _buildSeedPlansModelList(seedplans[index]);
                                     },

                                   ),
                                 ),
                               ),

                             ],
                           ),
                         ),
                       ),
                     ),

                     //zen master
                     Flexible(
                       child: Card(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20),
                         ),
                         child: Stack(
                           children: [
                            Padding(
                             padding: const EdgeInsets.all(20.0),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(
                                   "Zen Master",
                                   style: GoogleFonts.poppins(
                                       color: Color(0xff2b2b35),
                                       fontWeight: FontWeight.w600,
                                       fontSize: 24
                                   ),
                                 ),
                                 Text(
                                   "A subscription for self mastery,"
                                       "\nbuilding a foundation of"
                                       "\nmindfulness to self manage"
                                       "\nmental performance and master"
                                       "\nthe art of self instruction.",
                                   style: GoogleFonts.poppins(
                                     fontSize: 14,
                                     fontWeight: FontWeight.w400,
                                     color: Color(0xff121212),
                                   ),
                                 ),
                                 SizedBox(height: 20),
                                 RichText(
                                     text: TextSpan(
                                         text: '\u{00A3} 7',
                                         style: Theme.of(context).textTheme.headline2?.merge(
                                             GoogleFonts.poppins(
                                                 color: Color(0xff4f76f6),
                                                 fontWeight: FontWeight.w700
                                             )
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                               text: "/ month",
                                               style: GoogleFonts.poppins(
                                                   color: Color(0xff4f76f6),
                                                   fontWeight: FontWeight.w600,
                                                   fontSize: 14
                                               )
                                           )
                                         ]
                                     )
                                 ),
                                 SizedBox(height: 20),
                                 Text(
                                   "Subscription",
                                   style: GoogleFonts.poppins(
                                       color: Color(0xff4f76f6),
                                       fontSize: 14,
                                       fontWeight: FontWeight.w400
                                   ),
                                 ),
                                 SizedBox(height: 10),
                                 Center(
                                   child: Text(
                                     "for minimum 5 month",
                                     style: GoogleFonts.poppins(
                                         color: Color(0xff4f76f6),
                                         fontSize: 14,
                                         fontWeight: FontWeight.w700
                                     ),
                                   ),
                                 ),
                                 SizedBox(height: 20),
                                 Text(
                                   "Included",
                                   style: GoogleFonts.poppins(
                                       color: Colors.black,
                                       fontWeight: FontWeight.w600,
                                       fontSize: 18
                                   ),
                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Diagnostic Tests",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])
                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Life Path Mantra",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Tune IN",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])

                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Trigger Mindfulness",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])

                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Suggestion Analyst",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])

                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Iching",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])

                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Profile Friends",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])
                                   // new String.fromCharCodes(new Runes('\u221A'))
                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Meridian Diagnosis",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])
                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Fixed amount of calls per month",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])
                                 ),
                                 SizedBox(height: 20),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text(
                                       "5-month"
                                           "\nsubscription",
                                       style: GoogleFonts.poppins(
                                         color: Colors.black,
                                         fontSize: 16,
                                         fontWeight: FontWeight.w600
                                       ),
                                     ),
                                     SizedBox(width: 10),
                                     Text(
                                       '\u{00A3} ${35}',
                                       style: GoogleFonts.poppins(
                                           color: Color(0xff4f76f6),
                                           fontSize: 18,
                                           fontWeight: FontWeight.w600
                                       ),
                                     )
                                   ],
                                 ),
                                 SizedBox(height: 20),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text(
                                       "1-year"
                                           "\nsubscription",
                                       style: GoogleFonts.poppins(
                                           color: Colors.black,
                                           fontSize: 16,
                                           fontWeight: FontWeight.w600
                                       ),
                                     ),
                                     SizedBox(width: 10),
                                     Text(
                                       '\u{00A3} ${84}',
                                       style: GoogleFonts.poppins(
                                           color: Color(0xff4f76f6),
                                           fontSize: 18,
                                           fontWeight: FontWeight.w600
                                       ),
                                     )
                                   ],
                                 ),
                                 SizedBox(height: 20),
                                 Center(
                                   child: Container(
                                     width: 300,
                                     height: 40,
                                     child: ElevatedButton(
                                       onPressed: (){},
                                       style: ElevatedButton.styleFrom(
                                         primary: Color(0xff4F76F6),
                                       ),
                                       child: Text(
                                         "Join Now",
                                         style: GoogleFonts.poppins(
                                             color: Colors.white
                                         ),
                                       ),
                                     ),
                                   ),
                                 )

                               ],
                             ),
                           ),
                             Positioned(
                               top: 0,
                               left: 0,
                               child: Container(
                                  padding: EdgeInsets.only(left: 20),
                                 decoration: BoxDecoration(
                                     color: Color(0xffe5eafe),
                                     borderRadius: BorderRadius.only(
                                       topLeft: Radius.circular(8),
                                       bottomRight: Radius.circular(8),
                                     ) // green shaped
                                 ),
                                 child: Text("Most Popular",
                                 style: GoogleFonts.poppins(
                                   color: Color(0xff4f76f6),
                                   fontSize: 16,
                                   fontStyle: FontStyle.normal
                                 ),),
                               ),
                             )
                       ],
                         ),
                       ),
                     ),

                     //fast track
                     Flexible(
                       child: Container(
                         child: Card(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20),
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(20.0),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(
                                   "Fast Track",
                                   style: GoogleFonts.poppins(
                                       color: Color(0xff2b2b35),
                                       fontWeight: FontWeight.w600,
                                       fontSize: 24
                                   ),
                                 ),
                                 Text(
                                   "Quick relief for immediate"
                                       "\nremedy, insightful transformation"
                                       "\nto discover your tendencies and"
                                       "\nfor seeding specific new ways of"
                                       "\nbeing",
                                   style: GoogleFonts.poppins(
                                     fontSize: 14,
                                     fontWeight: FontWeight.w400,
                                     color: Color(0xff121212),
                                   ),
                                 ),
                                 SizedBox(height: 20),
                                 RichText(
                                     text: TextSpan(
                                         text: '\u{00A3} 43',
                                         style: Theme.of(context).textTheme.headline2?.merge(
                                             GoogleFonts.poppins(
                                                 color: Color(0xff4f76f6),
                                                 fontWeight: FontWeight.w700
                                             )
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                               text: "/ month",
                                               style: GoogleFonts.poppins(
                                                   color: Color(0xff4f76f6),
                                                   fontWeight: FontWeight.w600,
                                                   fontSize: 14
                                               )
                                           )
                                         ]
                                     )
                                 ),
                                 SizedBox(height: 20),
                                 Text(
                                   "One- time payment"
                                       "\nfor 2 month",
                                   style: GoogleFonts.poppins(
                                       color: Color(0xff4f76f6),
                                       fontSize: 14,
                                       fontWeight: FontWeight.w400
                                   ),
                                 ),
                                 SizedBox(height: 20),
                                 Text(
                                   "Included",
                                   style: GoogleFonts.poppins(
                                       color: Colors.black,
                                       fontWeight: FontWeight.w600,
                                       fontSize: 18
                                   ),
                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Diagnostic Tests",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])
                                   // new String.fromCharCodes(new Runes('\u221A'))
                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Life Path Mantra",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Tune IN",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])

                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Trigger Mindfulness",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])

                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Suggestion Analyst",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])

                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Iching",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])

                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Profile Friends",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])

                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Meridian Diagnosis",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])

                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "Fixed amount of calls per month",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])

                                 ),
                                 SizedBox(height: 5),
                                 RichText(
                                     text: TextSpan(
                                         text: "\u{221A} ",
                                         style: TextStyle(
                                             color: Color(0xff4f76f6)
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                             text: "One call with Philip included",
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 color: Color(0xff56565e),
                                                 fontStyle: FontStyle.normal,
                                                 fontWeight: FontWeight.w400
                                             ),
                                           )
                                         ])

                                 ),
                                 SizedBox(height: 30),
                                 Container(
                                   width: 300,
                                   height: 40,
                                   child: ElevatedButton(
                                     onPressed: (){},
                                     style: ElevatedButton.styleFrom(
                                       primary: Color(0xff4F76F6),
                                     ),
                                     child: Text(
                                       "Join Now",
                                       style: GoogleFonts.poppins(
                                           color: Colors.white
                                       ),
                                     ),
                                   ),
                                 )

                               ],
                             ),
                           ),
                         ),
                         decoration: BoxDecoration(
                             boxShadow: [
                               new BoxShadow(
                                   color: Color(0xffd3d3d3),
                                   blurRadius: 20
                               )
                             ]
                         ),
                       ),
                     ),
                   ],
                 ),
               ],
             ),
           ),
         ),
          ),
      ),
    );
  }


  Widget _buildSeedPlansModelList(SeedPlans _plans) {
    return
      (ResponsiveWidget.isSmallScreen(context))?
      Card (
          child: ExpansionTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _plans.title!,
                  style: GoogleFonts.poppins(
                      color: Colors.black

                  ),
                ),
                Text(
                  '\u{00A3} ${_plans.price!}',
                  style: GoogleFonts.poppins(
                      color: Color(0xff4f76f6),
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
            children: [
              ListTile(
                title: RichText(
                    text: TextSpan(
                        text: "\u{221A} ",
                        style: TextStyle(
                            color: Color(0xff4f76f6)
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: _plans.description!,
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff56565e),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400
                            ),
                          )
                        ])

                ),

              ),
              SizedBox(height: 10),
              Container(
                width: 300,
                height: 70,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: MouseRegion(
                    onHover: _updateLocation,
                    onExit: _incrementExit,
                    child: OutlinedButton(
                      onPressed: (){},
                      child: Text(
                        "Join Now",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 2.0,color: Color(0xffDCDCDC)),
                          backgroundColor: bgColor
                      ),),
                  ),
                ),
              ),

            ],
          )
      )
      :Card (
      child: ExpansionTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                _plans.title!,
                style: GoogleFonts.poppins(
                  color: Colors.black

                ),
              ),
            ),
            Flexible(
              child: Text(
              '\u{00A3} ${_plans.price!}',
                style: GoogleFonts.poppins(
                  color: Color(0xff4f76f6),
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
              ),
            )
          ],
        ),
        children: [
          ListTile(
            title: RichText(
                text: TextSpan(
                    text: "\u{221A} ",
                    style: TextStyle(
                        color: Color(0xff4f76f6)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: _plans.description!,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff56565e),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400
                        ),
                      )
                    ])

            ),

          ),
          SizedBox(height: 10),
          Container(
            width: 300,
            height: 70,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: MouseRegion(
                onHover: _updateLocation,
                onExit: _incrementExit,
                child: OutlinedButton(
                  onPressed: (){},
                  child: Text(
                    "Join Now",
                    style: TextStyle(
                        color: textColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2.0,color: Color(0xffDCDCDC)),
                      backgroundColor: bgColor
                  ),),
              ),
            ),
          ),

        ],
      )
    );
  }
}



