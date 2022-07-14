import 'package:flutter/material.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/appBarPages/appbarAllPage.dart';
import 'package:flutterweb/blog/blogModelPage1.dart';
import 'package:flutterweb/blog/blogModelPage4.dart';
import 'package:flutterweb/blog/blogModelPage5.dart';
import 'package:flutterweb/blog/blogModelPage7.dart';
import 'package:flutterweb/screens/footorPage.dart';
import 'package:flutterweb/appBarPages/smallAppbarAllPage.dart';
import 'package:google_fonts/google_fonts.dart';

import '../blog/blogModelPage2.dart';
import '../blog/blogModelPage3.dart';
import '../blog/blogModelPage6.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> with TickerProviderStateMixin {

  TabController? _titlecontroller;
  TabController? _desccontroller;
  List<String> blogTitleData = ["", "Meditations", "Health", "Work", "Life", "Invest in Hypnotised", "All articles"];
  int initPosition = 0;
  Color bgColor = Colors.white;
  Color textColor = Color(0xff4F76F6);
  double x = 0.0;
  double y = 0.0;

  void _updateLocation(PointerEvent details) {
    setState(() {
      bgColor = Color(0xff5e72e4);
      textColor = Colors.white;
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      textColor = Color(0xff4F76F6);
      bgColor = Colors.white;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _titlecontroller = TabController(length: blogTitleData.length,
        vsync: this,
    initialIndex: initPosition);
    _titlecontroller!.animateTo(0);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: (ResponsiveWidget.isSmallScreen(context) ||
          ResponsiveWidget.isMediumScreen(context))?
          SmallAppBarAllPage() : AppBarAllPages(),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Color(0xff2b2b35),
                  child: Column(
                    children: [
                      Container(
                        color: Color(0xff2b2b35),
                        height: MediaQuery.of(context).size.height/3,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Blog",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      (ResponsiveWidget.isSmallScreen(context))?
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20)
                            )
                        ),
                        child: Column(
                          children: [
                            PreferredSize(
                              preferredSize: Size.fromHeight(100),
                              child: Container(
                                color: Color(0xffF8F8FF),
                                child: MouseRegion(
                                  onHover: _updateLocation,
                                  onExit: _incrementExit,
                                  child: TabBar(
                                    controller: _titlecontroller,
                                    isScrollable: true,
                                    indicatorPadding: EdgeInsets.all(10),
                                    /* mouseCursor: MaterialStateProperty<MouseCursor>.resolveWith((states) {

                                        }),*/
                                    indicator:
                                    BoxDecoration(
                                      border: Border.all(color: Colors.grey.withOpacity(0.3)),
                                      color: MaterialStateColor.resolveWith((Set<MaterialState> states) {
                                        if (states.contains(
                                            MaterialState.hovered)) {
                                          print("&&&&&");
                                          return Color(0xff5e72e4);
                                        }
                                        else{
                                          return Colors.transparent;
                                        }
                                      }),
                                    ),
                                    tabs: List.generate(
                                      blogTitleData.length,
                                          (index) => Tab(
                                        child: Text(
                                          blogTitleData[index],
                                          style: GoogleFonts.poppins(
                                              color: Color(0xff2b2b35),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16
                                          ),
                                        ),
                                      ),
                                    ),

                                  ),
                                ),
                              ),

                            ),
                            SizedBox(height: 20),
                            Container(
                                height: MediaQuery.of(context).size.height,
                                child:
                                TabBarView(
                                  controller: _titlecontroller,
                                  children: [
                                    BlogModelPage1(),
                                    BlogModelPage2(),
                                    BlogModelPage3(),
                                    BlogModelPage4(),
                                    BlogModelPage5(),
                                    BlogModelPage6(),
                                    BlogModelPage7(),

                                  ],
                                )

                            ),
                            FooterPage()
                          ],
                        ),
                      )
                          :Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)
                          )
                        ),
                        child: Column(
                          children: [
                                 PreferredSize(
                                  preferredSize: Size.fromHeight(100),
                                  child: Container(
                                    color: Color(0xffF8F8FF),
                                    child: MouseRegion(
                                      onHover: _updateLocation,
                                      onExit: _incrementExit,
                                      child: TabBar(
                                         controller: _titlecontroller,
                                        indicatorPadding: EdgeInsets.all(10),
                                       /* mouseCursor: MaterialStateProperty<MouseCursor>.resolveWith((states) {

                                        }),*/
                                        indicator:
                                            BoxDecoration(
                                          border: Border.all(color: Colors.grey.withOpacity(0.3)),
                                          color: MaterialStateColor.resolveWith((Set<MaterialState> states) {
                                            if (states.contains(
                                                MaterialState.hovered)) {
                                              print("&&&&&");
                                              return Color(0xff5e72e4);
                                            }
                                            else{
                                               return Colors.transparent;
                                            }
                                          }),
                                        ),
                                        tabs: List.generate(
                                          blogTitleData.length,
                                              (index) => Tab(
                                                child: Text(
                                                  blogTitleData[index],
                                              style: GoogleFonts.poppins(
                                                color: Color(0xff2b2b35),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16
                                              ),
                                              ),
                                              ),
                                        ),

                                      ),
                                    ),
                                  ),

                            ),
                            SizedBox(height: 20),
                            Container(
                              height: MediaQuery.of(context).size.height,
                              child:
                                  TabBarView(
                                    controller: _titlecontroller,
                                      children: [
                                        BlogModelPage1(),
                                        BlogModelPage2(),
                                        BlogModelPage3(),
                                        BlogModelPage4(),
                                        BlogModelPage5(),
                                        BlogModelPage6(),
                                        BlogModelPage7(),

                                      ],
                                  )

                            ),
                            FooterPage()
                          ],
                        ),
                      ),


                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
