import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/screens/benefitspage.dart';
import 'package:flutterweb/screens/courses.dart';
import 'package:flutterweb/screens/customerAppBar.dart';
import 'package:flutterweb/screens/feedbackPage.dart';
import 'package:flutterweb/screens/how_its_workpage.dart';
import 'package:flutterweb/screens/introPage.dart';
import 'package:flutterweb/screens/plansPage.dart';
import 'package:flutterweb/screens/smallAppBar.dart';
import 'package:flutterweb/screens/whyChooseHypnoseedPage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bodyWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(

          body:
          SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (ResponsiveWidget.isSmallScreen(context))?
                SmallAppBar():CustomAppBar(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: IntroPage(),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: HowItsWorksPage()),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: CoursePage(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: BenefitPage(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: PlansPage(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: WhyChoosePage(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: FeedBackPage(),
                  )
                ],
              )
          ),
        )
    );

  }

}
