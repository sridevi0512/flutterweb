import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/blogModelPage.dart';

class BlogModelPage6 extends StatefulWidget {
  const BlogModelPage6({Key? key}) : super(key: key);

  @override
  State<BlogModelPage6> createState() => _BlogModelPage6State();
}

class _BlogModelPage6State extends State<BlogModelPage6> {
  List<BlogModel> blogModelInvestData = const<BlogModel> [
    BlogModel(image: "assets/images/blog-03.png", content: "The benefits of practicing meditation",dateTime: "2022-05-06T13:35:30.935Z"),
    BlogModel(image: "assets/images/blog-06.png", content: "yoga Is a happy to Life",dateTime: "2022-05-10T09:28:05.403Z"),

  ];
  bool isVisible = true;
  TextEditingController controllerblog5 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: MediaQuery.of(context).size.width/4,
            padding: EdgeInsets.all(20),
            child: TextFormField(
                controller: controllerblog5,
                onChanged: (text){
                  setState(() {
                    controllerblog5.text.isEmpty ? isVisible = true : isVisible = false;
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
          height: MediaQuery.of(context).size.height/1.5,
          padding: EdgeInsets.all(20),
          child: GridView.builder(
            itemCount: blogModelInvestData.length,
            shrinkWrap: true,
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
                    blogModelInvestData[index].image!,
                    height: MediaQuery.of(context).size.height/2,
                  ),
                  Text(
                    blogModelInvestData[index].content!,
                    style: GoogleFonts.poppins(
                        color: Color(0xff121212),
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  Text(
                    blogModelInvestData[index].dateTime!,
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
    );

  }
}
