import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedBackPage extends StatefulWidget {
  const FeedBackPage({Key? key}) : super(key: key);

  @override
  State<FeedBackPage> createState() => _FeedBackPageState();
}

class _FeedBackPageState extends State<FeedBackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
                    Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/leftquote.png",
                              ),
                              Text(
                                "Being able to customize the \ncontent and choose when to \nreceive my own quick voice"
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
