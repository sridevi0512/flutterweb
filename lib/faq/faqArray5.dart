import 'package:flutter/material.dart';
import 'package:flutterweb/model/faqModel.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQArray5Page extends StatefulWidget {
  const FAQArray5Page({Key? key}) : super(key: key);

  @override
  State<FAQArray5Page> createState() => _FAQArray5PageState();
}

class _FAQArray5PageState extends State<FAQArray5Page> {

  int checkingvalue = -1;
  List<FAQModel> faqModel5 = const<FAQModel>[
    const FAQModel(title: "How to change the password?", description: "You can change the password in the \"Edit profile\" section. Open \"Password\" section and set the new password"),
    const FAQModel(title: "How to change your email?", description: "You can change your email in the \"Edit profile\" section. Open \"Email\" section and set the new email."),
    const FAQModel(title: "How to set notifications?", description: "You can opt in or out of the notifications by going to \“edit profile.\” Open \“Notifications\” and choose your options."),
    const FAQModel(title: "How to update payment details?", description: "To update your payment details go to \“edit profile\” then go to payment methods."),
    const FAQModel(title: "What are my payment details?", description: "your payment details are those which you used to subscribe to Hypnoseed. Your payment details act like a receipt \nof purchase"),
    const FAQModel(title: "Can I share my account?", description: "you can not share the account, as Hypnoseed is set up to be your personal mindset companion, based on who \nyou are. Hypnoseed is a small company setting out, offering a great deal of knowledge for great value. We \nappreciate your support in recommending anyone who you feel can benefit. Sending your Profile Friends readings \nto them if appropriate is a nice way to introduce Hypnoseed. Thank you for your support."),
    const FAQModel(title: "Can I buy Hypnoseed as a gift?", description: "you can buy Hypnoseed as a gift by pressing the link in the subscription page for gifting. Hypnoseed, which is an \nonline personal growth guide, makes a unique gift"),
    const FAQModel(title: "How do I cancel my account?", description: "go to your settings and you can delete your account and all your data"),

  ];

  List<bool> isTitleClicked = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isTitleClicked = List<bool>.filled(this.faqModel5.length, false);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.all(0.0),
          itemCount: (faqModel5 == null)? 0 : faqModel5.length,
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
                            faqModel5[index].title!,
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
                                faqModel5[index].description!,
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
