import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/feedBack.dart';

class FeedBackPage extends StatefulWidget {

  FeedBackPage({Key? key,
  }) : super(key: key);

  @override
  State<FeedBackPage> createState() => _FeedBackPageState();
}

class _FeedBackPageState extends State<FeedBackPage> {
  final controller = ScrollController();
   List<FeedBack> feedbackList = const<FeedBack>[
    const FeedBack(image: "assets/images/leftquote.png", content: "Being able to customize the \ncontent and choose when to \nreceive my own quick voice", name: "Laura", city: "London, UK" ),
    const FeedBack(image: "assets/images/leftquote.png", content: "All I had to do is record my \nsuggestions, set the call back \ntimes and give responsibility \nover to my phone for \nrepetition. After so long \nprocrastinating, Hypnoseed \nmade it so easy", name: "Andrew", city: "Dorset, UK" ),
    const FeedBack(image: "assets/images/leftquote.png", content: "What is the best in the \nHypnoseed, that you can \nrecord and listen to both \npersonalized and your \nmantras? And set and listen \nto the courses any time you \nwant", name: "Ann", city: "London, UK" ),
    const FeedBack(image: "assets/images/leftquote.png", content: "I recommend Hypnoseed. I \nclike practicing personalized \naffirmations, understanding \nmyself, and improving my \nlife", name: "Dan", city: "London, UK" ),
    const FeedBack(image: "assets/images/leftquote.png", content: "Being able to customize the \ncontent and choose when to \nreceive my own quick voice", name: "Laura", city: "London, UK" ),
    const FeedBack(image: "assets/images/leftquote.png", content: "All I had to do is record my \nsuggestions, set the call back \ntimes and give responsibility \nover to my phone for \nrepetition. After so long \nprocrastinating, Hypnoseed \nmade it so easy", name: "Andrew", city: "Dorset, UK" ),
    const FeedBack(image: "assets/images/leftquote.png", content: "What is the best in the \nHypnoseed, that you can \nrecord and listen to both \npersonalized and your \nmantras? And set and listen \nto the courses any time you \nwant", name: "Ann", city: "London, UK" ),
    const FeedBack(image: "assets/images/leftquote.png", content: "I recommend Hypnoseed. I \nclike practicing personalized \naffirmations, understanding \nmyself, and improving my \nlife", name: "Dan", city: "London, UK" ),
  ];






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      (ResponsiveWidget.isSmallScreen(context))?
      Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage("assets/images/flower.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "feedback".toUpperCase(),
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color(0xff2b2b35),
                          fontWeight: FontWeight.w600

                      ),
                    ),
                    Text(
                      "What people say about us?",
                      style: GoogleFonts.poppins(
                          color: Color(0xff2b2b35),
                          fontSize: 36,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    Text(
                      ",,,Our testimonials",
                      style: GoogleFonts.kalam(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4f76f6),
                          fontSize: 26
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/1.5,
                child: ListView.builder(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: feedbackList.length,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Image.asset(
                              feedbackList[index].image,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              feedbackList[index].content!,
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Color(0xff2b2b35)
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              feedbackList[index].name!,
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Color(0xff2b2b35),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              feedbackList[index].city!,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xff56565e),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        controller.animateTo(-500,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      }),
                  IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        controller.animateTo(1000,
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.easeInOut);
                      }
                  )
                ],
              )
            ],
          ),
        ),
      )
      :Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage("assets/images/flower.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "feedback".toUpperCase(),
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color(0xff2b2b35),
                          fontWeight: FontWeight.w600

                      ),
                    ),
                    Text(
                      "What people say about us?",
                      style: GoogleFonts.poppins(
                          color: Color(0xff2b2b35),
                          fontSize: 36,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    Text(
                      ",,,Our testimonials",
                      style: GoogleFonts.kalam(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4f76f6),
                          fontSize: 26
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Flexible(
            flex: 1,
            child:
                Container(
                  child: ListView.builder(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    itemCount: feedbackList.length,
                    physics: PageScrollPhysics(),
                    itemBuilder: (BuildContext context, int index){
                      return Container(
                          child: ListFeedBackfc(fc: feedbackList[index]));
                    },
                  ),
                ),

          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    controller.animateTo(-500,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  }),
              IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    controller.animateTo(1000,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInOut);
                  }
                  )
            ],
          )
        ],
      ),
    );
  }
}
