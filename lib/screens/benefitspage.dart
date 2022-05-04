import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class BenefitPage extends StatefulWidget {
  const BenefitPage({Key? key}) : super(key: key);

  @override
  State<BenefitPage> createState() => _BenefitPageState();
}

class _BenefitPageState extends State<BenefitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Svg(
              'assets/images/benefitWave.svg',
            ),
            fit: BoxFit.cover
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Benefits".toUpperCase(),
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                    ),
                  ),
                  Text(
                    "Change your life",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    ",,,Change your mindset and replace"
                        "\ndestructive habits with new supportive"
                        "\nways of being",
                    style: GoogleFonts.kalam(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "With Hypnoseed you can:",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),

            Container(
              width: MediaQuery.of(context).size.width/2,
              child: StaggeredGrid.count(
                  crossAxisCount: 2,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0,
              children: List.generate(_list.length, (index){
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                    ),
                    shadowColor: Color(0xffe8984f),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(_list[index].image)),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(_list[index].content!,
                                style: TextStyle(
                                    color: Colors.black
                                ),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );

              }),
              ),
            ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BenefitsList{
  const BenefitsList({
    required this.image,
    this.content
});
  final String image;
  final String? content;
}

const List<BenefitsList> _list = const<BenefitsList>[
  const BenefitsList(image: "assets/images/star-circle.png", content: "Experience a deeper sense to self"),
  const BenefitsList(image: "assets/images/davils.png", content: "Face your fears"),
  const BenefitsList(image: "assets/images/stops.png", content: "Stop smoking"),
  const BenefitsList(image: "assets/images/butterfly.png", content: "Perform self-transformation"),
  const BenefitsList(image: "assets/images/butterfly.png", content: "Self-manage weight issues"),
  const BenefitsList(image: "assets/images/butterfly.png", content: "Balance anxiety"),
  const BenefitsList(image: "assets/images/butterfly.png", content: "Achieve peak performance")
];



