import 'package:flutter/material.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/blogModelPage.dart';
import '../model/sizeconfig.dart';

class BlogModelPage2 extends StatefulWidget {
  const BlogModelPage2({Key? key}) : super(key: key);

  @override
  State<BlogModelPage2> createState() => _BlogModelPage2State();
}

class _BlogModelPage2State extends State<BlogModelPage2> {
  List<BlogModel> blogMeditationDescData = const<BlogModel> [
    BlogModel(image: "assets/images/blog-01.png", content: "Self-Hypnosis for Anxiety: How to Use \nHypnosis to Reduce Anxiety",dateTime: "2022-05-06T13:35:30.935Z"),
  ];

  bool isVisible = true;
  TextEditingController controllerblog1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: (ResponsiveWidget.isSmallScreen(context))?SizeConfig.screenWidth(context)/1.5:SizeConfig.screenWidth(context)/4,
              padding: EdgeInsets.all(20),
              child: TextFormField(
                  controller: controllerblog1,
                  onChanged: (text){
                    setState(() {
                      controllerblog1.text.isEmpty ? isVisible = true : isVisible = false;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))
                    ),
                    prefixIcon: Visibility(
                      visible: isVisible,
                      child: Icon(Icons.search, color: Color.fromRGBO(101, 133, 237, 0.7)),
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  )
              ),
            ),
          ),
          Container(
             height: (ResponsiveWidget.isSmallScreen(context))?SizeConfig.screenHeight(context):SizeConfig.screenHeight(context)/1.2,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            child:
      (ResponsiveWidget.isSmallScreen(context))?
            Container(
              child: GridView.builder(
                  itemCount: blogMeditationDescData.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                    mainAxisSpacing: 6.0,
                    childAspectRatio: SizeConfig.screenWidth(context) / (SizeConfig.screenHeight(context)/0.5),
                  ),
                  itemBuilder: (context,index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset(
                            blogMeditationDescData[index].image!,
                          fit: BoxFit.cover,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            blogMeditationDescData[index].content!,
                            style: GoogleFonts.poppins(
                                color: Color(0xff121212),
                                fontSize: 18,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            blogMeditationDescData[index].dateTime!,
                            style: GoogleFonts.poppins(
                                color: Color(0xff2b2b35),
                                fontSize: 14,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        )
                      ],
                    );
                  }),
            ) :
      GridView.builder(
          itemCount: blogMeditationDescData.length,
          shrinkWrap: false,
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 16
          ),
          itemBuilder: (context,index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  blogMeditationDescData[index].image!,
                  height: SizeConfig.screenHeight(context)/2,
                  fit: BoxFit.cover,
                ),
                Text(
                  blogMeditationDescData[index].content!,
                  style: GoogleFonts.poppins(
                      color: Color(0xff121212),
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                  ),
                ),
                Text(
                  blogMeditationDescData[index].dateTime!,
                  style: GoogleFonts.poppins(
                      color: Color(0xff2b2b35),
                      fontSize: 14,
                      fontWeight: FontWeight.normal
                  ),
                )
              ],
            );
          }),
          ),

      ],
      ),
    );
  }
}
