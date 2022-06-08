import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/screens/blogPage.dart';
import 'package:flutterweb/screens/faqPage.dart';
import 'package:flutterweb/screens/investPage.dart';
import 'package:flutterweb/screens/terms&condPage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import 'aboutPage.dart';
import 'homePage.dart';

class FooterPage extends StatefulWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  State<FooterPage> createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {
  @override
  Widget build(BuildContext context) {
    return
      (ResponsiveWidget.isLargeScreen(context))?
      Container(
          child:Column(
            children: [
              Container(
                color: Color(0xff2b2b35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/footer-logo.png",
                            width: 200,
                            height: 34,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 35.0,top: 10),
                            child: Text(
                              ",,,In a disjointed world \nfind calm and inner peace",
                              style: GoogleFonts.kalam(
                                  color: Colors.white
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 35.0,top: 10),
                            child: Text(
                              "© Hypnoseed, 2021",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff56565e),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextButton(
                                onPressed: (){
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (BuildContext) => AboutPage()));
                                  Get.toNamed("/about");
                                },
                                child: Text(
                                  "About",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 15
                                  ),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextButton(
                                onPressed: (){
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (BuildContext) => BlogPage()));
                                  Get.toNamed("/blog");
                                },
                                child: Text(
                                  "Blog",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 15
                                  ),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextButton(
                                onPressed: (){
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (BuildContext) => FAQPage()));
                                  Get.toNamed("/faq");
                                },
                                child: Text(
                                  "FAQ",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 15
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextButton(
                                onPressed: (){
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (BuildContext) => TermsConditionsPage()));
                                  Get.toNamed("/termspolicy");
                                },
                                child: Text(
                                  "Terms and Privacy Policy ",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 15
                                  ),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextButton(
                                onPressed: (){
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (BuildContext) => InvestHypnoseedPage()));
                                  Get.toNamed("/investhypnoseed");
                                },
                                child: Text(
                                  "Invest in Hypnoseed",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 15
                                  ),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextButton(
                                onPressed: (){},
                                child: Text(
                                  "Sitemap",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 15
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child:  Text(
                                "Founder",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                                "Philip Cooper",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15

                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child:  Text(
                                "TN18 4RB",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15

                                )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child:  Text(
                                "Contact us::",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextButton(
                              onPressed: (){},
                              child: Text(
                                  "philip@karmakanic.com",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 15

                                  )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child:  Text(
                                "",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15

                                )),
                          )
                        ],
                      ),
                    )



                  ],
                ),
              ),
              Container(
                color: Color(0xff2b2b35),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Design by",
                        style: GoogleFonts.poppins(
                            color: Color(0xff56565e),
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          "OTAKOYI",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
      ):
      Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color(0xff2b2b35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/footer-logo.png",
                            width: 200,
                            height: 34,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 35.0,top: 10),
                            child: Text(
                              ",,,In a disjointed world \nfind calm and inner peace",
                              style: GoogleFonts.kalam(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextButton(
                                    onPressed: (){
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(builder: (BuildContext) => AboutPage()));
                                      Get.toNamed("/about");
                                    },
                                    child: Text(
                                      "About",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 15
                                      ),
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextButton(
                                    onPressed: (){
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(builder: (BuildContext) => BlogPage()));
                                      Get.toNamed("/blog");
                                    },
                                    child: Text(
                                      "Blog",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 15
                                      ),
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextButton(
                                    onPressed: (){
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(builder: (BuildContext) => FAQPage()));
                                      Get.toNamed("/faq");
                                    },
                                    child: Text(
                                      "FAQ",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 15
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextButton(
                                    onPressed: (){
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(builder: (BuildContext) => TermsConditionsPage()));
                                      Get.toNamed("/termspolicy");
                                    },
                                    child: Text(
                                      "Terms and Privacy Policy ",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 15
                                      ),
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextButton(
                                    onPressed: (){
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(builder: (BuildContext) => InvestHypnoseedPage()));
                                      Get.toNamed("/investhypnoseed");
                                    },
                                    child: Text(
                                      "Invest in Hypnoseed",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 15
                                      ),
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextButton(
                                    onPressed: (){
                                      Get.toNamed("/home");
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Sitemap",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 15
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child:  Text(
                                    "Founder",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 15
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                    "Philip Cooper",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 15

                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child:  Text(
                                    "TN18 4RB",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 15

                                    )),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child:  Text(
                                    "Contact us::",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 15
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextButton(
                                  onPressed: (){},
                                  child: Text(
                                      "philip@karmakanic.com",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 15

                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )

                      ],
                    ),

                  ],
                ),
              ),
              Container(
                color: Color(0xff2b2b35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 10),
                      child: Text(
                        "© Hypnoseed, 2021",
                        style: GoogleFonts.poppins(
                            color: Color(0xff56565e),
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Container(
                      color: Color(0xff2b2b35),
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:"Design by",
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff56565e),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  TextSpan(
                                      text:  " OTAKOYI",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {

                                        }
                                  )
                                ]
                            ),
                          )

                      ),
                    ),
                  ],
                ),
              )
            ],
          )
      );
  }
}
