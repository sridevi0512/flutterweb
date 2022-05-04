import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child: Column(
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
            ListView.builder(
              itemCount: courselist.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  child: ListCourseslc(cl: courselist[index]),
                );
              },
             ),
           /* ListView.builder(
              itemCount: selectcourselt.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  child: SelectedscCourse(cl: selectcourselt[index])
                );
              },
            )*/

          ],
        ),
      ),
    );
  }
}

class CoursesList {
  const CoursesList({
    this. icon,
    this.content,
    // this.selectedCourseList
  });
  final IconData? icon;
  final String? content;
  // final ListView? selectedCourseList;
}

const List<CoursesList> courselist = const<CoursesList>[
  const CoursesList(icon: Icons.emoji_emotions_outlined,content: "Life Path Mantra",),
  const CoursesList(icon: Icons.star_border_outlined,content: "Tune IN"),
  const CoursesList(icon: Icons.wb_sunny_outlined,content: "Trigger Mindfulness"),
  const CoursesList(icon: Icons.stream_outlined,content: "Suggestion Analyst"),
  const CoursesList(icon: Icons.mic_outlined,content: "Recording Studio"),

];
/*const List<SelectedCourse> selectcourselt = const<SelectedCourse>[
  const SelectedCourse(coursenumber: "01",titleName: "Life Path Mantra", subtitle:"...Free Oracle Profile Reading",description:"Discover your tendencies while choosing relevant personalised suggestions that feed your mantra. Read out loud as you record, then program playbacks through the day via calls to your phone and begin seeding new ways of being and counter unsupportive habits."),
  const SelectedCourse(coursenumber: "01",titleName: "Life Path Mantra", subtitle:"...Free Oracle Profile Reading",description:"Discover your tendencies while choosing relevant personalised suggestions that feed your mantra. Read out loud as you record, then program playbacks through the day via calls to your phone and begin seeding new ways of being and counter unsupportive habits."),
  const SelectedCourse(coursenumber: "01",titleName: "Life Path Mantra", subtitle:"...Free Oracle Profile Reading",description:"Discover your tendencies while choosing relevant personalised suggestions that feed your mantra. Read out loud as you record, then program playbacks through the day via calls to your phone and begin seeding new ways of being and counter unsupportive habits."),
  const SelectedCourse(coursenumber: "01",titleName: "Life Path Mantra", subtitle:"...Free Oracle Profile Reading",description:"Discover your tendencies while choosing relevant personalised suggestions that feed your mantra. Read out loud as you record, then program playbacks through the day via calls to your phone and begin seeding new ways of being and counter unsupportive habits."),
  const SelectedCourse(coursenumber: "01",titleName: "Life Path Mantra", subtitle:"...Free Oracle Profile Reading",description:"Discover your tendencies while choosing relevant personalised suggestions that feed your mantra. Read out loud as you record, then program playbacks through the day via calls to your phone and begin seeding new ways of being and counter unsupportive habits."),

];*/

class ListCourseslc extends StatelessWidget {
  const ListCourseslc({Key? key,
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
