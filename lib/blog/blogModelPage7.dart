import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/blogModelPage.dart';

class BlogModelPage7 extends StatefulWidget {
  const BlogModelPage7({Key? key}) : super(key: key);

  @override
  State<BlogModelPage7> createState() => _BlogModelPage7State();
}

class _BlogModelPage7State extends State<BlogModelPage7> {
  List<BlogModel> blogArticlesDescData = const<BlogModel> [
    BlogModel(image: "assets/images/blog-04.png", content: "Yoga is a key to happy life",dateTime: "2022-05-06T13:35:30.935Z"),
  ];

  bool isVisible = true;
  TextEditingController controllerblog6 = TextEditingController();

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
                controller: controllerblog6,
                onChanged: (text){
                  setState(() {
                    controllerblog6.text.isEmpty ? isVisible = true : isVisible = false;
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
              itemCount: blogArticlesDescData.length,
              shrinkWrap: true,
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
                      blogArticlesDescData[index].image!,
                      height: MediaQuery.of(context).size.height/2,
                    ),
                    Text(
                      blogArticlesDescData[index].content!,
                      style: GoogleFonts.poppins(
                          color: Color(0xff121212),
                          fontSize: 20,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Text(
                      blogArticlesDescData[index].dateTime!,
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
    );
  }
}
