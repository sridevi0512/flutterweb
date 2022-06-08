import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/model/aboutYearPage.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/screens/benefitspage.dart';
import 'package:flutterweb/screens/courses.dart';
import 'package:flutterweb/screens/customerAppBar.dart';
import 'package:flutterweb/screens/feedbackPage.dart';
import 'package:flutterweb/screens/footorPage.dart';
import 'package:flutterweb/screens/how_its_workpage.dart';
import 'package:flutterweb/screens/introPage.dart';
import 'package:flutterweb/screens/plansPage.dart';
import 'package:flutterweb/screens/smallAppBar.dart';
import 'package:flutterweb/screens/storyPage.dart';
import 'package:flutterweb/screens/whyChooseHypnoseedPage.dart';

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

 /* @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
*/
    @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    print("screenWidth: $screenWidth");
/*
      controller.animateTo(
          0,
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn);*/

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
          CustomAppBar(
            dataKey:dataKey,
            courseDataKey: coursedataKey,
            benefitDataKey: benefitDataKey,
            plansDataKey: plansDataKey,
            feedbackDataKey: feedbackDataKey,
            storyDataKey: ourStoryDataKey,
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
