import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class WhyChoosePage extends StatefulWidget {
  const WhyChoosePage({Key? key}) : super(key: key);

  @override
  State<WhyChoosePage> createState() => _WhyChoosePageState();
}

class _WhyChoosePageState extends State<WhyChoosePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Svg(
              'assets/images/greenWave.svg',
            ),
            fit: BoxFit.cover
          )
        ),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
          "Why choose Hypnoseed?",
          style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 36
          ),
            ),
            SizedBox(height: 20),
            Text(
              "Personalization and understanding your tendencies are the key"
                  "\nto insight self transformation.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 55,
              child: ElevatedButton(
                onPressed: (){},
                child: Text(
                  "Join for free",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff2b2b35)
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
