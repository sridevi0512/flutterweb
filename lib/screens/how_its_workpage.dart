import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class HowItsWorksPage extends StatefulWidget {
  const HowItsWorksPage({Key? key}) : super(key: key);

  @override
  State<HowItsWorksPage> createState() => _HowItsWorksPageState();
}

class _HowItsWorksPageState extends State<HowItsWorksPage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
             constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/wave.png',
                    ),
                    fit: BoxFit.cover
                )
            ),
            child:
            (ResponsiveWidget.isSmallScreen(context))?
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text("How its works".toUpperCase(),
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0,left: 5),
                  child: Text(
                    "Become your own zen "
                        "\nmaster with Hypnoseed",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    ",,,Everything you seek is inside of you"
                        "\nChange starts in your words",
                    style: GoogleFonts.kalam(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ListView.builder(
                    itemCount: choices.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index){
                      return Padding(
                        padding: const EdgeInsets.all(6.2),
                        child: Card(
                          color: Color(0xff849ef1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadowColor: Color(0xff597cee),
                          child: Padding(
                            padding: const EdgeInsets.all(6.2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 15,
                                  child: Icon(choices[index].imageIcon,
                                      size:20),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6),
                                  child: Text(choices[index].title!,
                                      style: GoogleFonts.poppins(color: Colors.white,
                                          fontSize: 16)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );

                    },
                  ),
                )


              ],
            ):
                 FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("How its works".toUpperCase(),
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14
                              ),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Become your own zen "
                                "\nmaster with Hypnoseed",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            ",,,Everything you seek is inside of you"
                                "\nChange starts in your words",
                            style: GoogleFonts.kalam(
                                color: Colors.white,
                                fontSize: 20
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Container(
                            width: (ResponsiveWidget.isLargeScreen(context))?screenWidth/3: screenWidth/2,
                            child: GridView.count(
                                crossAxisCount: 2,
                                shrinkWrap: true,
                                crossAxisSpacing: 2.0,
                                mainAxisSpacing: 2.0,
                                children:
                                List.generate(
                                  choices.length,(index){
                                  return Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Card(
                                      color: Color(0xff849ef1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      shadowColor: Color(0xff597cee),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 15,
                                                child: Icon(choices[index].imageIcon,
                                                    size:20),
                                              ),
                                              Flexible(
                                                child: Padding(
                                                  padding: EdgeInsets.only(top: 10,bottom: 10),
                                                  child: Text(choices[index].title!,
                                                      style: GoogleFonts.poppins(color: Colors.white,
                                                          fontSize: ResponsiveWidget.isLargeScreen(context)?16 :13)),
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ),

                                    ),
                                  );
                                },
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
             )
        ),
      ),
    );
  }
}
class Choice {
  const Choice({
    this. imageIcon,
    this.title
  });
  final IconData? imageIcon;
  final String? title;
}

const List<Choice> choices = const<Choice>[
  const Choice(imageIcon: Icons.wb_sunny_outlined,title: "Understand yourself & \nacknowledge your motivations."),
  const Choice(imageIcon: Icons.emoji_emotions_outlined,title: "Practice personalized \naffirmations."),
  const Choice(imageIcon: Icons.stream_outlined,title: "Build your sacred space."),
  const Choice(imageIcon: Icons.mic_outlined,title: "Record voice messages \nto yourself & listen to them \n anywhere at anytime."),

];

