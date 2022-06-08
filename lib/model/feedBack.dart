import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedBack{
  const FeedBack({
  required this.image,
  this.content,
    this.name,
    this.city
  });
  final String image;
  final String? content;
  final String? name;
  final String? city;

}


class ListFeedBackfc extends StatelessWidget {
  const ListFeedBackfc({Key? key,
  this.fc}) :
        super(key: key);

  final FeedBack? fc;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(20),
        child: Image.asset(
          fc!.image,
        ),
        ),
        Padding(
            padding: EdgeInsets.all(20),
        child: Text(
          fc!.content!,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Color(0xff2b2b35)
          ),
        ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            fc!.name!,
            style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xff2b2b35),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            fc!.city!,
            style: GoogleFonts.poppins(
                fontSize: 14,
                color: Color(0xff56565e),
            ),
          ),
        )
      ],
    );
  }
}
