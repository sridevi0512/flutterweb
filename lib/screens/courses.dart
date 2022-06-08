import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  int? _courseSelectedIndex;

  List<CoursesList> courselist = const<CoursesList>[
    const CoursesList(courseIcon: Icons.emoji_emotions_outlined,courseId: "01",title: "Life Path Mantra", subtitle: "...Free Oracle Profile Reading", description: "Discover your tendencies while choosing relevant personalised suggestions that feed your \nmantra. Read out loud as you record, then program playbacks through the day via calls to \nyour phone and begin seeding new ways of being and counter unsupportive habits.",image: "assets/images/LifePath-img.png"),
    const CoursesList(courseIcon: Icons.star_border_outlined,courseId: "02",title: "Tune in", subtitle: "...Quick discreet balance sequence", description: "Perform an effective sequence of actions to wake up, balance systems and tune into self. \nA necessity to being your best and to believe the suggestions you seed. Make your chosen \nTune In sequence a habit, with the right mindset you will achieve incredible results.",image: "assets/images/tune-in.png"),
    const CoursesList(courseIcon: Icons.wb_sunny_outlined,courseId: "03",title: "Trigger Mindfulness", subtitle: "...Cultivate your own sacred space", description: "The practice helps to counter anxiety and achieve peak performance. There are 10 self \nenquiry meditations to inspire emotions and feelings which are anchored. Trigger the \nanchor at will to bring mindfulness, a state of focused calm, into your reality.",image: "assets/images/Trigger-Mindfulness.png"),
    const CoursesList(courseIcon: Icons.stream_outlined,courseId: "04",title: "Suggestion Analyst", subtitle: "...Become your own therapist", description: "Listen to self enquiry guide you through 11 questions that formulate a specific personalised \nscript, tailored to your needs to inspire and transform. Be guided into the heart of the \nmatter and tweak the script to amplify its potential. You are now ready to record and \nplayback with the help of Hypnoseed a 5 to 21 day program to seed and succeed.",image: "assets/images/Suggestion.png"),
    const CoursesList(courseIcon: Icons.mic_outlined,courseId: "05",title: "Recording Studio", subtitle: "...Record affirmations whenever you like", description: "Whenever you feel inspiration that can drive positive change - grab your device and \nrecord a motivational affirmation. Set the time and get a callback to listen to your \naffirmation at home, work or on the go.",image: "assets/images/recording_audio.png"),


  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _courseSelectedIndex = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child:
        SingleChildScrollView(
          child:
          (ResponsiveWidget.isSmallScreen(context))?
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "courses".toUpperCase(),
                style: GoogleFonts.poppins(
                    color: Color(0xff56565e),
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color: Colors.grey.shade300
                  )
                ),
                child: ListView.builder(
                  itemCount: courselist.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index){
                    return
                       Card(
                        child:  Padding(
                          padding: EdgeInsets.all(10),
                        child: ExpansionTile(
                          onExpansionChanged: (bool isExpanded) {
                            /* checkingvalue = index;
                          setState(() {
                            isTitleClicked[index] = isExpanded;
                          });*/
                          },
                          trailing: SizedBox.shrink(),
                          title: Row(
                            children: [
                              Icon(
                                courselist[index].courseIcon,
                                size: 30,
                              ),
                              SizedBox(width: 10),
                              Text(
                                courselist[index].title!,
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)
                              )

                            ],
                          ),
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(courselist[index].courseId!,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: Color(0xff56565e)
                                        ),),
                                    ),
                                    SizedBox(height: 20),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(courselist[index].title!,
                                          style: GoogleFonts.poppins(
                                              color: Color(0xff2b2b35),
                                              fontSize: 30,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(courselist[index].subtitle!,
                                          style: GoogleFonts.kalam(
                                              color: Color(0xff4f76f6),
                                              fontSize: 26,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(courselist[index].description!,
                                          style: GoogleFonts.poppins(
                                              color: Color(0xff56565e),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
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
                                    SizedBox(height: 10),
                                    Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset(
                                          courselist[index].image!,
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            )


                          ],
                        ),
                      ),
                    );

                  },
                ),
              )
            ],
          )
              :Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "courses".toUpperCase(),
                style: GoogleFonts.poppins(
                  color: Color(0xff56565e),
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                     Container(
                      height: MediaQuery.of(context).size.height,
                      padding: EdgeInsets.all(20),
                      child: NavigationRail(
                        destinations: _buildCoursesDestinations(),
                        selectedIndex: _courseSelectedIndex!,
                        extended: true,
                        onDestinationSelected: (int index) {
                          setState(() {
                            _courseSelectedIndex = index;
                          });
                        },
                      ),
                    ),

                  VerticalDivider(),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(courselist[_courseSelectedIndex!].courseId!,
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Color(0xff56565e)
                                ),),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(courselist[_courseSelectedIndex!].title!,
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff2b2b35),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(courselist[_courseSelectedIndex!].subtitle!,
                                  style: GoogleFonts.kalam(
                                      color: Color(0xff4f76f6),
                                      fontSize: 26,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(courselist[_courseSelectedIndex!].description!,
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff56565e),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
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
                            SizedBox(height: 10),
                            Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Image.asset(
                                  courselist[_courseSelectedIndex!].image!,
                                  fit: BoxFit.cover,
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  List<NavigationRailDestination> _buildCoursesDestinations() {
    return [

      NavigationRailDestination(
          icon: Icon(Icons.emoji_emotions_outlined,
          size: 30,),
          label: Text(
            "Life Path Mantra",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600)
          )
      ),
      NavigationRailDestination(
          icon: Icon(Icons.star_border_outlined,
          size: 30,),
          label: Text(
            "Tune IN",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600)
          )
      ),
      NavigationRailDestination(
          icon: Icon(Icons.wb_sunny_outlined,
          size: 30,),
          label: Text(
            "Trigger Mindfulness",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600)
          )
      ),
      NavigationRailDestination(
          icon: Icon(Icons.stream_outlined,
          size: 30,),
          label: Text(
            "Suggestion Analyst",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600)
          )
      ),
      NavigationRailDestination(
          icon: Icon(Icons.mic_outlined,
          size: 30,),
          label: Text(
            "Recording Studio",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600)
          )
      ),
    ];
  }
}

class CoursesList {
  const CoursesList({
    this.courseIcon,
    this. courseId,
    this.title,
    this.subtitle,
    this.description,
    this.image
    // this.selectedCourseList
  });
  final IconData? courseIcon;
  final String? courseId;
  final String? title;
  final String? subtitle;
  final String? description;
  final String? image;
  // final ListView? selectedCourseList;
}



class ListCourseslc extends StatelessWidget {
  const ListCourseslc({Key? key,
    this.cl}) :
        super(key: key);
  final CoursesList? cl;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(cl!.courseId!,
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: Color(0xff56565e)
        ),),
      ),
      SizedBox(height: 20),
      Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(cl!.title!,
            style: GoogleFonts.poppins(
                color: Color(0xff2b2b35),
            fontSize: 30,
            fontWeight: FontWeight.w600)),
      ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(cl!.subtitle!,
              style: GoogleFonts.kalam(
                  color: Color(0xff4f76f6),
                  fontSize: 26,
                  fontWeight: FontWeight.w400)),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(cl!.description!,
              style: GoogleFonts.poppins(
                  color: Color(0xff56565e),
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Image.asset(
            cl!.image!,
            fit: BoxFit.cover,
          )
        ),
    ],
    );
  }
}
/*class SelectedscCourse extends StatelessWidget {
  const SelectedscCourse({Key? key,
    this.cl}) :
        super(key: key);
  final CoursesList? cl;

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Icon(cl!.icon,
                  size:30),
            ),
            SizedBox(width: 10),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(cl!.content!,
                  style: GoogleFonts.poppins(color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
            ),
          ],
        ),
      ],
    );
  }
}*/

/*
class SelectedCourse{
  const SelectedCourse({
    this.coursenumber,
    this.titleName,
    this.subtitle,
    this.description,
    this.images,
});
  final String? coursenumber;
  final String? titleName;
  final String? subtitle;
  final String? description;
  final Image? images;


}
*/
