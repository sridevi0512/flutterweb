import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/screens/appbarAllPage.dart';
import 'package:flutterweb/faq/faqArray1.dart';
import 'package:flutterweb/faq/faqArray3.dart';
import 'package:flutterweb/faq/faqArray4.dart';
import 'package:flutterweb/faq/faqArray6.dart';
import 'package:flutterweb/screens/footorPage.dart';
import 'package:flutterweb/screens/smallAppbarAllPage.dart';
import 'package:google_fonts/google_fonts.dart';

import '../faq/faqArray2.dart';
import '../faq/faqArray5.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  int? _selectedIndex;
  List faqArrayPages = [FAQArray1Page(), FAQArray2Page(), FAQArray3Page(), FAQArray4Page(), FAQArray5Page(), FAQArray6Page()];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedIndex = 0;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: (ResponsiveWidget.isSmallScreen(context) ||
            ResponsiveWidget.isMediumScreen(context))?
        SmallAppBarAllPage() : AppBarAllPages(),
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
                        padding: EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "FAQ",
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
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)
                          )
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height,
                                padding: EdgeInsets.all(20),
                                child: Card(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  child: NavigationRail(
                                    destinations: _buildDestinations(),
                                    selectedIndex: _selectedIndex!,
                                     extended: true,
                                    onDestinationSelected: (int index) {
                                      setState(() {
                                        _selectedIndex = index;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              VerticalDivider(),
                              Expanded(
                                  child: Container(
                                    child: faqArrayPages[_selectedIndex!],
                                  )

                              )
                            ],
                          ),
                          FooterPage()
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<NavigationRailDestination> _buildDestinations() {
    return [

      NavigationRailDestination(
          icon: Icon(Icons.settings),

            label: Text(
              'Account Settings',
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
              ),
            )

          ),
      NavigationRailDestination(
          icon: Icon(Icons.credit_card),
          label: Text(
            'Subscriptions',
            style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600
            ),
          ),
      ),
      NavigationRailDestination(
          icon: Icon(Icons.wb_sunny_outlined),
          label: Text(
            'Meditations',
            style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600
            ),
          )
      ),
      NavigationRailDestination(
          icon: Icon(Icons.book_outlined),
          label: Text(
            'Using Hypnoseed',
            style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600
            ),
          )
      ),
      NavigationRailDestination(
          icon: Icon(Icons.mic),
          label:
              Text(
                'Recording Studio',
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                ),
              ),

      ),
      NavigationRailDestination(
          icon: Icon(Icons.adjust_outlined),
          label: Text(
            'Cookie Policy',
            style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600
            ),
          )
      )
    ];
  }
}
