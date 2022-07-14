import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/model/aboutYearPage.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/screens/benefitspage.dart';
import 'package:flutterweb/screens/courses.dart';
import 'package:flutterweb/appBarPages/customerAppBar.dart';
import 'package:flutterweb/screens/feedbackPage.dart';
import 'package:flutterweb/screens/footorPage.dart';
import 'package:flutterweb/screens/how_its_workpage.dart';
import 'package:flutterweb/screens/introPage.dart';
import 'package:flutterweb/screens/loginPage.dart';
import 'package:flutterweb/screens/plansPage.dart';
import 'package:flutterweb/appBarPages/smallAppBar.dart';
import 'package:flutterweb/screens/storyPage.dart';
import 'package:flutterweb/screens/whyChooseHypnoseedPage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ScrollController controller = ScrollController();
  final dataKey = new GlobalKey();
  final coursedataKey = new GlobalKey();
  final benefitDataKey = new GlobalKey();
  final plansDataKey = new GlobalKey();
  final feedbackDataKey = new GlobalKey();
  final ourStoryDataKey = new GlobalKey();
  SharedPreferences? prefs;
  var datetime;

  /* @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
*/

  Future<void> _checkTime() async {
    prefs = await SharedPreferences.getInstance();
    datetime = DateTime
        .now()
        .millisecondsSinceEpoch ~/ 1000;
    print("timecheck: $datetime");

    if (prefs!.getString("user_token") != null) {
      int timingSeconds =int.parse(
          prefs!.getString("expiry_time").toString());
      print("timingSeconds  ${timingSeconds.toString()}");

      if (datetime > timingSeconds) {
        print("################");
        prefs!.clear();
        Get.toNamed("/login");

        Navigator.push(context,
            MaterialPageRoute(builder: (context) => LoginPage()));
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _checkTime();

  }
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    print("screenWidth: $screenWidth");
    return SafeArea(
        child: Scaffold(
            appBar:
            (ResponsiveWidget.isMediumScreen(context) || ResponsiveWidget.isSmallScreen(context))?
            SmallAppBar(
              dtkey: dataKey,
              courseDataKey: coursedataKey,
              benefitDataKey: benefitDataKey,
              plansDataKey: plansDataKey,
              feedbackDataKey: feedbackDataKey,
              storyDataKey: ourStoryDataKey,
            ):
            PreferredSize(
              preferredSize: Size.fromHeight(60.0),
              child: CustomAppBar(
                dataKey:dataKey,
                courseDataKey: coursedataKey,
                benefitDataKey: benefitDataKey,
                plansDataKey: plansDataKey,
                feedbackDataKey: feedbackDataKey,
                storyDataKey: ourStoryDataKey,
              ),
            ),

            body:
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: constraints.copyWith(
                      minHeight: constraints.maxHeight,
                      maxHeight: double.infinity,
                    ),
                    child: IntrinsicHeight(
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              child: IntroPage()
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              key: dataKey,
                              child: HowItsWorksPage()),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            key: coursedataKey,
                            child: CoursePage(),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            key: benefitDataKey,
                            child: BenefitPage(),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            key: plansDataKey,
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
                            key: feedbackDataKey,
                            child: FeedBackPage(),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            key: ourStoryDataKey,
                            child: OurStoryPage(),
                          ),

                          Align(
                            alignment: Alignment.bottomCenter,
                            child: FooterPage(),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            )

        )
    );

  }



}
