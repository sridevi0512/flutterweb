import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomMenuItem extends StatelessWidget {
  final String? title;
  final Function? press;
  const CustomMenuItem({Key? key,
    this.title,
    this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        press!();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          title!,
          style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500
          ),
        ),
      ),

    );
  }
}
