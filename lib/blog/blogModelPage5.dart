import 'package:flutter/material.dart';
import 'package:flutterweb/model/blogModelPage.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogModelPage5 extends StatefulWidget {
  const BlogModelPage5({Key? key}) : super(key: key);

  @override
  State<BlogModelPage5> createState() => _BlogModelPage5State();
}

class _BlogModelPage5State extends State<BlogModelPage5> {

  List<BlogModel> blogModelLifeData = const<BlogModel> [
    BlogModel(image: "assets/images/blog-02.png", content: "Transformations",dateTime: "2022-05-06T13:35:30.935Z"),
    BlogModel(image: "assets/images/blog-05.png", content: "yoga is a key to a happy life",dateTime: "2022-05-10T09:28:05.403Z"),

  ];
  bool isVisible = true;
  TextEditingController controllerblog4 = TextEditingController();
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
                controller: controllerblog4,
                onChanged: (text){
                  setState(() {
                    controllerblog4.text.isEmpty ? isVisible = true : isVisible = false;
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
              itemCount: blogModelLifeData.length,
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
                      blogModelLifeData[index].image!,
                      height: MediaQuery.of(context).size.height/2,
                    ),
                    Text(
                      blogModelLifeData[index].content!,
                      style: GoogleFonts.poppins(
                          color: Color(0xff121212),
                          fontSize: 20,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Text(
                      blogModelLifeData[index].dateTime!,
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
