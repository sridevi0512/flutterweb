import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/model/aboutYearPage.dart';
import 'package:flutterweb/model/sizeconfig.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/screens/appbarAllPage.dart';
import 'package:flutterweb/screens/customerAppBar.dart';
import 'package:flutterweb/screens/footorPage.dart';
import 'package:flutterweb/screens/smallAppBar.dart';
import 'package:flutterweb/screens/smallAppbarAllPage.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/customTabView.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> with TickerProviderStateMixin {

  List<String> yearData = ["2021", "2019", "2014", "2009", "2006", "1999", "1998", "1994", "1992", "1987", "1984"];

  TabController? _aboutController;
  List<YearAbout> yearAboutData = const<YearAbout>[
    YearAbout(title: "Hypnoseed", description: "I am now testing Hypnoseed content with you and looking for investment to grow \nHypnoseed."),
    YearAbout(title: "Completed content of Hypnoseed", description: "Self transform with minimum fuss, time and commitment. Hypnoseed is all the best \ninformation I have learnt from my travels all into one practical sequence. I noticed \nwhat is often lacking in other online courses was the personalisation to see things for \nwhat they are, so they no longer have a hold on us"),
    YearAbout(title: "Ibiza", description: "During a psychedelic experience I had the concept of Hypnoseed. A way to manage \nones own personal growth from the phone. The idea had merit and in 2015 I begun to \nbring the vision to fruition."),
    YearAbout(title: "Trainee Shaman", description: "Begun exploring hypnosis, meditation and yoga similarities to the role of the Shaman. \nMy training is an ongoing journey."),
    YearAbout(title: "Bohorockers", description: "Begun manufacturing my design of hanging chair, Bohorockers, in India. This allowed \nme to focus on my personal practice and not have to rely solely on healing work to \npay my way."),
    YearAbout(title: "Karmakanic", description: "Begun Karmakanic, my healing arts practise, working in snowboard and kitesurf \nresorts. Offering massage, sound therapy and suggestion."),
    YearAbout(title: "Studying", description: "Completed training as a hypnotherapist under Joseph Cymrank and continued my \nstudies into the power of suggestion in Rishikesh, India during Kumbha Mela. This is \nwhere all the lineages of Hindu mysticism meet up for a 3 month intensive."),
    YearAbout(title: "Plant Medicine", description: "South America. My first experience of plant medicine. San Pedro Cactus and \nAyahuasca."),
    YearAbout(title: "Ko Phan Ghan", description: "I arrived in koh Phan Ghan, Thailand. My first experience of being free. I begun studying \nhealing arts from massage and meditation to Tai Chi. This interest in healing arts took \nme on a 10 year journey travelling to cosmic events and great teachers."),
    YearAbout(title: "Living in London", description: "Age 18 living in London; I attended Harmonic Convergence which was a global OM. \nThis was my switch on and first taste of counter culture healing arts, while at the same \ntime electronic music burst on the scene, which for those involved as myself, was a \nfirst taste of the oneness of all things."),
    YearAbout(title: "Exams", description: "R.E. exams at 15, it made me question the validity of the brainwash that is our \neducation. If we don't have a common consensus on world events, how can we \nbelieve the accuracy of history in the past? In the chase to evolve and transcend our \nself, so much of the good information has been lost. We need to dehypnotize what we \nhave blindly accepted as our truth, holding up our beliefs to scrutiny and see if it's \nserving us well."),
  ];
  int initPosition = 0;
  List<String> imgList = [
    "assets/images/tabslider-01.png",
    "assets/images/tabslider-02.png",
    "assets/images/tabslider-03.png"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _aboutController = TabController(length: yearData.length, vsync: this);
    _aboutController!.animateTo(0);
  }

  @override
  Widget build(BuildContext context) {
    print("ScreenWidth: ${SizeConfig.screenWidth(context)}");
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: (ResponsiveWidget.isSmallScreen(context) ||
            ResponsiveWidget.isMediumScreen(context))?
        SmallAppBarAllPage(): AppBarAllPages(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                    color: Color(0xff2b2b35),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Color(0xff2b2b35),
                          height: MediaQuery.of(context).size.height/3,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "About Hypnoseed",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 30
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
                                topRight: Radius.circular(20.0),
                                topLeft: Radius.circular(20.0)),
                          ),
                          child:
                          (ResponsiveWidget.isSmallScreen(context))?
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                    child:CircleAvatar(
                                      backgroundImage: AssetImage("assets/images/about.png"),
                                      radius: 150,
                                    )
                        ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "A founder of hypnoseed".toUpperCase(),
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff56565e),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Philip Cooper",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff2b2b35),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "I am a qualified hypnotherapist and experienced meditator with the \npractice of the healing arts for 25 years. Outside of this I love sports, music \nand cooking.",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff56565e),
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16
                                        ),
                                      ),
                                    ),
                              SizedBox(height: 10),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: CustomTabView(
                                  initPosition: initPosition,
                                  itemCount: yearData.length,
                                  tabBuilder: (context, index) => Tab(text: yearData[index]),
                                  pageBuilder: (context, index) => Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Text(
                                          yearAboutData[index].title!,
                                          style: GoogleFonts.poppins(
                                              fontSize: 30,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff2b2b35)
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Text(
                                          yearAboutData[index].description!,
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff56565e)
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  onPositionChange: (index){

                                    initPosition = index;
                                  },
                                  onScroll: (position) => print('$position'),
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child:
                                CarouselSlider(
                                    items: imgList
                                        .map((item) => Container(
                                      child: Center(
                                          child:
                                          Image.asset(item, fit: BoxFit.fill)),
                                    ))
                                        .toList(),
                                    options: CarouselOptions(
                                      initialPage: 0,
                                      enableInfiniteScroll: true,
                                      reverse: false,
                                      autoPlay: true,
                                      autoPlayInterval: Duration(seconds: 3),
                                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      enlargeCenterPage: true,
                                      scrollDirection: Axis.horizontal,
                                    )
                                )
                              ),
                              SizedBox(height: 20),
                                     Container(
                                       color: Color(0xffe5eafe),
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Padding(
                                             padding: const EdgeInsets.all(10.0),
                                             child: Align(
                                               alignment: Alignment.topLeft,
                                               child: CircleAvatar(
                                                   radius:75,
                                                   backgroundImage: AssetImage("assets/images/flower.png")
                                               ),
                                             ),
                                           ),

                                           Padding(
                                             padding: const EdgeInsets.all(10.0),
                                             child: Text(
                                               "The Mission of Hypnoseed",
                                               style: GoogleFonts.poppins(
                                                   fontWeight: FontWeight.w600,
                                                   fontSize: 24,
                                                   color: Color(0xff2b2b35)
                                               ),
                                               textAlign: TextAlign.left,
                                             ),
                                           ),
                                           Padding(
                                             padding: const EdgeInsets.all(10.0),
                                             child: Text(
                                               "Our mission is to offer the space to self manage your mindset, replacing bad habits with supportive ones \nand so you can feel at ease with yourself. We want to help you understand yourself and acknowledge \nyour motivations, so you can accept the situation and transcend it.",
                                               style: GoogleFonts.poppins(
                                                   fontWeight: FontWeight.normal,
                                                   fontSize: 16,
                                                   color: Color(0xff56565e)
                                               ),
                                             ),
                                           ),
                                         ],
                                       ),
                                     ),
                                    
                              SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "Our Values",
                                      style: GoogleFonts.poppins(
                                          fontSize: 36,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff2b2b35)
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "We all can have great ideas for self improvement in the evening, only to find the next day \na lack of will to continue. Now the smartphone is here, it is ideal to use as a tool of \nrepetition...as repetition is all you need to succeed in learning new ways of being.",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff56565e)
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                              SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      width: SizeConfig.screenWidth(context),
                                      height: SizeConfig.screenHeight(context)/4,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                            side: BorderSide(color: Colors.grey.withOpacity(0.5),width: 1.0)
                                        ),
                                        child:Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child:
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 10),

                                                  Text(
                                                    "Personal growth",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 18,
                                                        color: Color(0xff2b2b35)
                                                    ),
                                                  ),

                                              SizedBox(height: 10),
                                              Text(
                                                "There is a desire inside each of us to see \nbeyond our self and not be taken by our \nthoughts all the time.\n\n",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    color: Color(0xff56565e)
                                                ),
                                              )
                                                ],
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      width: SizeConfig.screenWidth(context),
                                      height: SizeConfig.screenHeight(context)/4,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                            side: BorderSide(color: Colors.grey.withOpacity(0.5),width: 1.0)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 10),
                                              Text(
                                                "Empathy to everyone",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18,
                                                    color: Color(0xff2b2b35)
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                "We understand the challenges to \naccept oneself and offer a personalised \napproach to seeding recommendations \nto counter negative tendencies and \nboost positive aspects of self.",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    color: Color(0xff56565e)
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      width: SizeConfig.screenWidth(context),
                                      height: SizeConfig.screenHeight(context)/4,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                            side: BorderSide(color: Colors.grey.withOpacity(0.5),width: 1.0)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 10),
                                              Text(
                                                "Share knowledge",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18,
                                                    color: Color(0xff2b2b35)
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                "Know your self. We offer all the tools for \nyou to create your personalised daily \npractice to develop focused awareness \nand dialogue between the conscious \nand subconscious mind.",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    color: Color(0xff56565e)
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      width: SizeConfig.screenWidth(context),
                                      height: SizeConfig.screenHeight(context)/4,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                            side: BorderSide(color: Colors.grey.withOpacity(0.5),width: 1.0)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 10),
                                              Text(
                                                "Focus and practice",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18,
                                                    color: Color(0xff2b2b35)
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                "When we give ourselves emotionally to \na task and practice its techniques, there \nis not much that can stop our success. \nWe offer an automated system to stay \nswitched on all day.",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    color: Color(0xff56565e)
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                              SizedBox(height: 20),
                              Container(
                                color: Color(0xffe5eafe),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child:
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: CircleAvatar(
                                            radius:75,
                                            backgroundImage: AssetImage("assets/images/yogaimg-02.jpg")
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Happy to help find a supportive path",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24,
                                            color: Color(0xff2b2b35)
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "I wish you the best possible path in walking and hope Hypnoseed is useful in your life. As I say, it is best to \ntake everything in life with a laughing belly and an open heart.",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16,
                                            color: Color(0xff56565e)
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ),

                              SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Hypnoseed investment opportunity",
                                  style: GoogleFonts.poppins(
                                      fontSize: 36,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff2b2b35)
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Hypnoseed is looking for investors who are interested in helping us to grow. Philip Cooper, \nthe Hypnoseed founder, would love to connect with you and share his vision.",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff56565e)
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: ElevatedButton(
                                  onPressed: (){},
                                  child: Text(
                                    "Read More",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 16
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff4f76f6),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    minimumSize: Size(150, 60),
                                  ),),
                              ),
                              FooterPage()


                            ],
                          )
                              :
                          Column(
                            children: [
                              FittedBox(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage("assets/images/about.png"),
                                          radius: 100,
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Text(
                                                "A founder of hypnoseed".toUpperCase(),
                                                style: GoogleFonts.poppins(
                                                    color: Color(0xff56565e),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16
                                                ),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Text(
                                                "Philip Cooper",
                                                style: GoogleFonts.poppins(
                                                    color: Color(0xff2b2b35),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 24
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Text(
                                                "I am a qualified hypnotherapist and experienced meditator with the \npractice of the healing arts for 25 years. Outside of this I love sports, music \nand cooking.",
                                                style: GoogleFonts.poppins(
                                                    color: Color(0xff56565e),
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 16
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            SizedBox(height: 10),
                              (ResponsiveWidget.isMediumScreen(context))?
                              FittedBox(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: CustomTabView(
                                    initPosition: initPosition,
                                    itemCount: yearData.length,
                                    tabBuilder: (context, index) => Tab(text: yearData[index]),
                                    pageBuilder: (context, index) => FittedBox(
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: Text(
                                                  yearAboutData[index].title!,
                                                style: GoogleFonts.poppins(
                                                  fontSize: 26,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff2b2b35)
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: Text(
                                                  yearAboutData[index].description!,
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff56565e)
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    onPositionChange: (index){

                                      initPosition = index;
                                    },
                                    onScroll: (position) => print('$position'),
                                  ),
                                ),
                              ):
                              CustomTabView(
                                initPosition: initPosition,
                                itemCount: yearData.length,
                                tabBuilder: (context, index) => Tab(text: yearData[index]),
                                pageBuilder: (context, index) => Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Text(
                                        yearAboutData[index].title!,
                                        style: GoogleFonts.poppins(
                                            fontSize: 28,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff2b2b35)
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Text(
                                        yearAboutData[index].description!,
                                        style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff56565e)
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                onPositionChange: (index){

                                  initPosition = index;
                                },
                                onScroll: (position) => print('$position'),
                              ),
                              SizedBox(height: 10),
                              FittedBox(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(width: 20),
                                        Image.asset("assets/images/tabslider-01.png",
                                        fit: BoxFit.cover,
                                        ),
                                        SizedBox(width: 20),
                                        Image.asset("assets/images/tabslider-02.png",
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(width: 20),
                                        Image.asset("assets/images/tabslider-03.png",
                                          fit: BoxFit.cover,
                                        )

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              (ResponsiveWidget.isMediumScreen(context))?
                              Container(
                                width: MediaQuery.of(context).size.width,
                                color: Color(0xffe5eafe),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: FittedBox(
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          CircleAvatar(
                                            radius:75,
                                            backgroundImage: AssetImage("assets/images/flower.png")
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "The Mission of Hypnoseed",
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 22,
                                                  color: Color(0xff2b2b35)
                                                ),
                                              ),
                                              Text(
                                                "Our mission is to offer the space to self manage your mindset, replacing bad habits with supportive ones \nand so you can feel at ease with yourself. We want to help you understand yourself and acknowledge \nyour motivations, so you can accept the situation and transcend it.",
                                                maxLines: 2,
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 14,
                                                    color: Color(0xff56565e)
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              :
                              Container(
                                width: MediaQuery.of(context).size.width,
                                color: Color(0xffe5eafe),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      CircleAvatar(
                                          radius:75,
                                          backgroundImage: AssetImage("assets/images/flower.png")
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "The Mission of Hypnoseed",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 30,
                                                color: Color(0xff2b2b35)
                                            ),
                                          ),
                                          Text(
                                            "Our mission is to offer the space to self manage your mindset, replacing bad habits with supportive ones \nand so you can feel at ease with yourself. We want to help you understand yourself and acknowledge \nyour motivations, so you can accept the situation and transcend it.",
                                            maxLines: 2,
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16,
                                                color: Color(0xff56565e)
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              FittedBox(
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Our Values",
                                        style: GoogleFonts.poppins(
                                          fontSize: 36,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff2b2b35)
                                        ),
                                      ),
                                      Text(
                                        "We all can have great ideas for self improvement in the evening, only to find the next day \na lack of will to continue. Now the smartphone is here, it is ideal to use as a tool of \nrepetition...as repetition is all you need to succeed in learning new ways of being.",
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff56565e)
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              FittedBox(
                                child: Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                            side: BorderSide(color: Colors.grey.withOpacity(0.5),width: 1.0)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 20),
                                                Text(
                                                    "Personal growth",
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18,
                                                  color: Color(0xff2b2b35)
                                                ),
                                                ),
                                                SizedBox(height: 20),
                                                Text(
                                                    "There is a desire inside each of us to see \nbeyond our self and not be taken by our \nthoughts all the time.\n\n",
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xff56565e)
                                                ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              side: BorderSide(color: Colors.grey.withOpacity(0.5),width: 1.0)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 20),
                                                Text(
                                                  "Empathy to everyone",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 18,
                                                      color: Color(0xff2b2b35)
                                                  ),
                                                ),
                                                SizedBox(height: 20),
                                                Text(
                                                  "We understand the challenges to \naccept oneself and offer a personalised \napproach to seeding recommendations \nto counter negative tendencies and \nboost positive aspects of self.",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 14,
                                                      color: Color(0xff56565e)
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              side: BorderSide(color: Colors.grey.withOpacity(0.5),width: 1.0)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 20),
                                                Text(
                                                  "Share knowledge",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 18,
                                                      color: Color(0xff2b2b35)
                                                  ),
                                                ),
                                                SizedBox(height: 20),
                                                Text(
                                                  "Know your self. We offer all the tools for \nyou to create your personalised daily \npractice to develop focused awareness \nand dialogue between the conscious \nand subconscious mind.",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 14,
                                                      color: Color(0xff56565e)
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              side: BorderSide(color: Colors.grey.withOpacity(0.5),width: 1.0)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 20),
                                                Text(
                                                  "Focus and practice",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 18,
                                                      color: Color(0xff2b2b35)
                                                  ),
                                                ),
                                                SizedBox(height: 20),
                                                Text(
                                                  "When we give ourselves emotionally to \na task and practice its techniques, there \nis not much that can stop our success. \nWe offer an automated system to stay \nswitched on all day.",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 14,
                                                      color: Color(0xff56565e)
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              (ResponsiveWidget.isMediumScreen(context))?
                              Container(
                                width: MediaQuery.of(context).size.width,
                                color: Color(0xffe5eafe),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: FittedBox(
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          CircleAvatar(
                                              radius:75,
                                              backgroundImage: AssetImage("assets/images/yogaimg-02.jpg")
                                          ),
                                          SizedBox(width: 20),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Happy to help find a supportive path",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 22,
                                                    color: Color(0xff2b2b35)
                                                ),
                                              ),
                                              Text(
                                                "I wish you the best possible path in walking and hope Hypnoseed is useful in your life. As I say, it is best to \ntake everything in life with a laughing belly and an open heart.",
                                                maxLines: 2,
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 16,
                                                    color: Color(0xff56565e)
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ):
                              Container(
                                width: MediaQuery.of(context).size.width,
                                color: Color(0xffe5eafe),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      CircleAvatar(
                                          radius:75,
                                          backgroundImage: AssetImage("assets/images/yogaimg-02.jpg")
                                      ),
                                      SizedBox(width: 20),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Happy to help find a supportive path",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 30,
                                                color: Color(0xff2b2b35)
                                            ),
                                          ),
                                          Text(
                                            "I wish you the best possible path in walking and hope Hypnoseed is useful in your life. As I say, it is best to \ntake everything in life with a laughing belly and an open heart.",
                                            maxLines: 2,
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16,
                                                color: Color(0xff56565e)
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              FittedBox(
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Hypnoseed investment opportunity",
                                        style: GoogleFonts.poppins(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff2b2b35)
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Hypnoseed is looking for investors who are interested in helping us to grow. Philip Cooper, \nthe Hypnoseed founder, would love to connect with you and share his vision.",
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            color: Color(0xff56565e)
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 10),
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: ElevatedButton(
                                            onPressed: (){},
                                            child: Text(
                                              "Read More",
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 16
                                              ),
                                            ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xff4f76f6),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          minimumSize: Size(150, 60),
                                        ),),
                                      )

                                    ],
                                  ),
                                ),
                              ),
                              FooterPage()


                            ],
                          ),
                        )
                      ],
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
