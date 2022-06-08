import 'package:flutter/material.dart';
import 'package:flutterweb/model/faqModel.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQArray6Page extends StatefulWidget {
  const FAQArray6Page({Key? key}) : super(key: key);

  @override
  State<FAQArray6Page> createState() => _FAQArray6PageState();
}

class _FAQArray6PageState extends State<FAQArray6Page> {

  int checkingvalue = -1;
  List<FAQModel> faqModel6 = const<FAQModel>[
    const FAQModel(title: "How to change the password?", description: "You can change the password in the \"Edit profile\" section. Open \"Password\" section and set the new password"),
    const FAQModel(title: "How to change your email?", description: "You can change your email in the \"Edit profile\" section. Open \"Email\" section and set the new email."),
    const FAQModel(title: "How to set notifications?", description: "You can opt in or out of the notifications by going to \“edit profile.\” Open \“Notifications\” and choose your options."),
    const FAQModel(title: "How to update payment details?", description: "To update your payment details go to \“edit profile\” then go to payment methods."),
    const FAQModel(title: "What are my payment details?", description: "your payment details are those which you used to subscribe to Hypnoseed. Your payment details act like a receipt \nof purchase"),

  ];

  List<bool> isTitleClicked = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isTitleClicked = List<bool>.filled(this.faqModel6.length, false);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.all(0.0),
          itemCount: (faqModel6 == null)? 0 : faqModel6.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){

              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 1,
                  child: ListTileTheme(
                    horizontalTitleGap: 0.0,
                    dense: true,
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        unselectedWidgetColor: Color(0xff2b2b35), // here for close state
                        colorScheme: ColorScheme.light(
                          primary: Color(0xff2b2b35),
                        ), // here for open state in replacement of deprecated accentColor
                        dividerColor: Colors.transparent, // if you want to remove the border
                      ),
                      child: ExpansionTile(
                        onExpansionChanged: (bool isExpanded) {
                          checkingvalue = index;
                          setState(() {
                            isTitleClicked[index] = isExpanded;
                          });
                        },
                        title: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            faqModel6[index].title!,
                            style: GoogleFonts.poppins(
                                color: Color(0xff2b2b35),
                                fontSize:18,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                faqModel6[index].description!,
                                style: GoogleFonts.poppins(
                                    color: Color(0xff56565e),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),


                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ) ,
            );
          },
        )
    );
  }
}
