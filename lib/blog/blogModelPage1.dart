import 'package:flutter/material.dart';
import 'package:flutterweb/model/blogModelPage.dart';
import 'package:flutterweb/model/sizeconfig.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogModelPage1 extends StatefulWidget {
  const BlogModelPage1({Key? key}) : super(key: key);

  @override
  State<BlogModelPage1> createState() => _BlogModelPage1State();
}

class _BlogModelPage1State extends State<BlogModelPage1> {

  List<BlogModel> blogModelDescData = const<BlogModel> [
    BlogModel(image: "assets/images/blog-01.png", content: "Self-Hypnosis for Anxiety: How to Use \nHypnosis to Reduce Anxiety",dateTime: "2022-05-06T13:35:30.935Z"),
    BlogModel(image: "assets/images/blog-02.png", content: "Transformations",dateTime: "2022-05-06T13:35:30.935Z"),
    BlogModel(image: "assets/images/blog-03.png", content: "The benefits of practicing meditation",dateTime: "2022-05-06T13:35:30.935Z"),
    BlogModel(image: "assets/images/blog-04.png", content: "Yoga is a key to happy life",dateTime: "2022-05-06T13:35:30.935Z"),
    BlogModel(image: "assets/images/blog-05.png", content: "yoga is a key to a happy life",dateTime: "2022-05-10T09:28:05.403Z"),
    BlogModel(image: "assets/images/blog-06.png", content: "yoga Is a happy to Life",dateTime: "2022-05-10T09:28:05.403Z"),
  ];

  bool isVisible = true;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: (ResponsiveWidget.isSmallScreen(context))?SizeConfig.screenWidth(context)/1.5:SizeConfig.screenWidth(context)/4,
              padding: EdgeInsets.all(20),
              child: TextFormField(
                  controller: controller,
                  onChanged: (text){
                    setState(() {
                      controller.text.isEmpty ? isVisible = true : isVisible = false;
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
            padding: EdgeInsets.all(20),
            child:
            (ResponsiveWidget.isSmallScreen(context))?
            Container(
              child: GridView.builder(
                itemCount: blogModelDescData.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 6.0,
                  childAspectRatio: SizeConfig.screenWidth(context) / (SizeConfig.screenHeight(context)/0.5),
                ),
                itemBuilder: (context,index){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset(
                          blogModelDescData[index].image!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            blogModelDescData[index].content!,
                            style: GoogleFonts.poppins(
                                color: Color(0xff121212),
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                          child: Text(
                            blogModelDescData[index].dateTime!,
                            style: GoogleFonts.poppins(
                                color: Color(0xff2b2b35),
                                fontSize: 14,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },

              ),
            ) :
            GridView.builder(
              itemCount: blogModelDescData.length,
              shrinkWrap: false,
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16
              ),
              itemBuilder: (context,index){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      blogModelDescData[index].image!,
                      height: SizeConfig.screenHeight(context)/2,
                    ),
                    Text(
                      blogModelDescData[index].content!,
                      style: GoogleFonts.poppins(
                          color: Color(0xff121212),
                          fontSize: 20,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Text(
                      blogModelDescData[index].dateTime!,
                      style: GoogleFonts.poppins(
                          color: Color(0xff2b2b35),
                          fontSize: 14,
                          fontWeight: FontWeight.normal
                      ),
                    )
                  ],
                );
              },

            ),
          ),
        ],
      ),
    );
  }
}
