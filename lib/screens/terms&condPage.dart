import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/appBarPages/appbarAllPage.dart';
import 'package:flutterweb/screens/footorPage.dart';
import 'package:flutterweb/appBarPages/smallAppbarAllPage.dart';
import 'package:flutterweb/screens/unOrderedList.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsConditionsPage extends StatefulWidget {
  const TermsConditionsPage({Key? key}) : super(key: key);

  @override
  State<TermsConditionsPage> createState() => _TermsConditionsPageState();
}

class _TermsConditionsPageState extends State<TermsConditionsPage> {
  @override
  Widget build(BuildContext context) {
    print("Screen size: ${MediaQuery.of(context).size.width}");
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: (ResponsiveWidget.isSmallScreen(context) ||
        ResponsiveWidget.isMediumScreen(context))? SmallAppBarAllPage() : AppBarAllPages(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Color(0xff2b2b35),
                child: Column(
                  children: [
                    Container(
                      color: Color(0xff2b2b35),
                      height: MediaQuery.of(context).size.height/3,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Terms and Privacy Policy",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                        )
                      ),
                      child:
                      (ResponsiveWidget.isLargeScreen(context))?
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/6,
                                  color: Colors.transparent,
                                ),
                                (ResponsiveWidget.isMediumScreen(context))?
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment:MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "1.General Site Information",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 36
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "1.1 CopyRight",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The Hypnoseed information and content was written and compiled by Philip C.J. Cooper of\nKarmakanic ltd, U.K. for the exclusive use of Hypnoseed. The information is protected by copyright\nand may not be reprinted without the written permission of Philip C.J.Cooper, Karmakanic ltd and\nHypnoseed.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "1.2. Personal information",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Hypnoseed does not share any personal information with third parties. We don't like it ourselves\nand we believe we treat people as we like to be treated. Your personal information on Hypnoseed\nis very personal and not for the use of others. Full stop. We use your data to improve your\nexperience, like remembering your preferences, choices and status on the Hypnoseed site.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Your phone number you store as data is used solely by you for use to receive audio and video\nfiles that you the user programs themselves. You can disallow us to send you occasional\nnotifications, such as a payment reminder and Trigger Happy upgrades.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "1.3. Disclaimer",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The Oracle and Mantra test and results are intended as a convenient tool to provide practical\ninformation on your psychic profile constitutional type. It is not intended to diagnose, treat, cure\nor prevent any disease. In addition, it should be noted that while this information should be\nconsidered highly useful it is not meant to replace the skilled constitutional analysis of a\nprofessionally trained Therapist.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Hypnoseed is based around the concept of suggestion. Everything in life could be said to be a\nsuggestion. You choose to either believe or disbelief it. Truth changes through history, todays\ntruth is tomorrow’s lie. For instance we used to believe the earth was the centre of the universe,\nthen that the earth was flat and now its round. We didn't believe in climate change but now it is\nrecognised as given by news outlets.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Hypnoseed is based on techniques already widely used and the experience gained from the\ntechnique. It is best to follow the technique and then decide if it works, than academically\ndiscussing it, than the other way round. Any claims you consider Hypnoseed to be making are\nconsidered by Hypnoseed to be a suggestion, not a truth. A tendency expressed or unexpressed.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The contents of this website, such as text, graphics, images and other material are intended for\ninformational and educational purposes only and not for the purpose of obtaining medical\nadvice. The contents of this website are not intended to substitute for professional medical\nadvice, diagnosis or treatment. Although we take efforts to keep the medical information on our\nwebsite updated, we cannot guarantee that the information on our website reflects the most up-\nto-date research.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The idea in times of medical need all disciplines of healing combine and compliment each other\nto offer the person the best possible route map to health and wellness.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2. Terms of Service",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 36
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Last updated 8th April 2019",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: "Welcome to karmakanic ltd. which provides our website located at",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                  )
                                              ),
                                              TextSpan(
                                                  text: ' www.hypnoseed.com',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      launch('https://hypnoseedfront.sitecare.org/#/home');
                                                    }),
                                              TextSpan(
                                                  text: "(the\n“Site”) and our self hypnosis, meditation and self-care services accessible via our Site and our\nmobile device application (“App”). To make these Terms easier to read, the Site, our services and\nApp are collectively called the “Services.” Please read these Terms of Service (the “Terms”)\ncarefully because they govern your use of our Services.",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.normal,
                                                      fontSize: 16
                                                  )
                                              )
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.1. Agreement to Terms",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "By using our Services, you agree to be bound by these Terms. If you don’t agree to be bound by\nthese Terms, do not use the Services.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.2. Privacy policy",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Please refer to our Privacy Policy for information on how we collect, use and disclose\ninformation from our users. You acknowledge and agree that your use of the Services is subject to our Privacy\nPolicy.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.3. Changes to Terms or Services",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "We may modify the Terms at any time, in our sole discretion. If we do so, we’ll let you know either"
                                            "\nby posting the modified Terms on the Site or through other communications. It’s important that"
                                            "\nyou review the Terms whenever we modify them because if you continue to use the Services after"
                                            "\nwe have posted modified Terms on the Site, you are indicating to us that you agree to be bound"
                                            "\nby the modified Terms. If you don’t agree to be bound by the modified Terms, then you may not"
                                            "\nuse the Services anymore. Because our Services are evolving over time we may change or"
                                            "\ndiscontinue all or any part of the Services, at any time and without notice, at our sole discretion.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.4. Arbitration Notice",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Unless you opt out of arbitration within 30 days of the date you first agree to these terms by"
                                            "\nfollowing the opt-out procedure specified in the “Arbitration” section below, and except for"
                                            "\ncertain types of disputes described in the “Arbitration“ section below, you agree that disputes"
                                            "\nbetween you and Hypnoseed will be resolved by binding, individual arbitration and you are"
                                            "\nwaiving your right to a trial by jury or to participate as a plaintiff or class member in any"
                                            "\npurported class action or representative proceeding.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.5. Who May Use the Services ?",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.5.1 Eligibility",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "You may use the Services only if you are 13 years or older and are not barred from using the\nServices under applicable law. To make a purchase via the Services (described in the Section\ntitled “Purchases” below), you must be 18 years or older and capable of forming a binding\ncontract., we cannot guarantee that the information on our website reflects the most up-\nto-date research.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.5.2 Registration and Your Information",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "If you want to use certain features of the Services you’ll have to create an account (“Account”)."
                                            "\nYou can do this via the App or the Site or through your account with certain third-party social"
                                            "\nnetworking services such as Facebook (each, an “SNS Account”)."
                                            "\nIf you choose the SNS Account option we’ll create your Account by extracting from your SNS Account certain personal"
                                            "\ninformation such as your name and email address and other personal information that your"
                                            "\nprivacy settings on the SNS Account permit us to access",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.5.3 Using the Services",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Via the Services, users can select from a variety of options to create customized relaxation and"
                                            "\nself-improvement sessions. You can also use the paid functionality of the Services to utilize the"
                                            "\nenhanced functionality of the Services or purchase items that are offered for sale through the"
                                            "\nServices (the “Products”), as described in further detail under the Section titled “Purchases” below."
                                            "\nYou understand and agree that the Services, Products and any other information you learn from"
                                            "\nHypnoseed are not intended, designed, or implied to diagnose, prevent, or treat any condition or"
                                            "\ndisease, to ascertain the state of your health, or to be a substitute for professional medical care."
                                            "\nNot all activities described on the Services or Products are suitable for everyone. Do not use"
                                            "\nthe Services while driving, operating heavy machinery, or performing other tasks that require"
                                            "\nattention and concentration. You understand and agree that you are solely responsible for your"
                                            "\nuse of the Services.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.6. Purchases",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.6.1 Fees",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Calm offers certain enhanced features of the Services which you can purchase as a monthly,"
                                            "\nyearly or lifetime subscription (“Subscription”). A description of features associated with"
                                            "\nSubscriptions is available via the Services. When you purchase a Subscription or a Product (each, "
                                            "\na “Transaction”), we may ask you to supply additional information relevant to your Transaction, "
                                            "\nsuch as your credit card number, the expiration date of your credit card and your address(es) for"
                                            "\nbilling and delivery (such information, “Payment Information”). You represent and warrant"
                                            "\nthat you have the legal right to use all payment method(s) represented by any such Payment"
                                            "\nInformation. The amounts due and payable by you for a Transaction through the Services will be"
                                            "\npresented to you before you place your order. If you choose to initiate a Transaction via the"
                                            "\nServices, you authorize us to provide your Payment Information to third party service providers so"
                                            "\nwe can complete your Transaction and agree (a) to pay the applicable fees and any taxes; (b)"
                                            "\nthat Hypnoseed may charge your credit card or third party payment processing account,"
                                            "\nincluding, but not limited to, your account with the app store or distribution platform (like the"
                                            "\nApple App Store, Google Play or the Amazon Appstore) where the App is made available (each,"
                                            "\nan “App Provider”), for verification, pre-authorization and payment purposes; and (c) to bear any"
                                            "\nadditional charges that your App Provider, bank or other financial service provider may levy on"
                                            "\nyou as well as any taxes or fees that may apply to your order. You’ll receive a confirmation email"
                                            "\nafter we confirm the payment for your order. Your order is not binding on Hypnoseed until"
                                            "\naccepted and confirmed by Hypnoseed. All payments made are non-refundable and non-"
                                            "\ntransferable except as expressly provided in these Terms.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "If you have any concerns or objections regarding charges, you agree to raise them with us first"
                                            "\nand you agree not to cancel or reject any credit card or third party payment processing charges"
                                            "\nunless you have made a reasonable attempt at resolving the matter directly with Hypnoseed."
                                            "\nHypnoseed reserves the right to not process or to cancel your order in certain circumstances, "
                                            "\nfor example, if your credit card is declined, if we suspect the request or order is fraudulent, or in other"
                                            "\ncircumstances Hypnoseed deems appropriate in its sole discretion. Hypnoseed also reserves the"
                                            "\nright, in its sole discretion, to take steps to verify your identity in connection with your order. You"
                                            "\nmay need to provide additional information to verify your identity before completing your"
                                            "\nTransaction (such information is included within the definition of Payment Information)."
                                            "\nHypnoseed will either not charge you or refund the charges for orders that we do not process or cancel.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.6.2 Title, Risk of Loss",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The risk of loss and title for Products purchased by you pass from Hypnoseed to you on shipment"
                                            "\nfrom Hypnoseed’s facility. All shipments are governed in accordance to Hypnoseed standard"
                                            "\nShipping Terms.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.6.3 Return Policy",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "If for any reason, you are not satisfied with the Product you have purchased and you want to\n"
                                            "return the Product, please refer to our Return Policy for information on how you may return eligible"
                                            "\nProducts.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "All amounts are payable and charged: for one-off purchase at the time you place your order."
                                            "\nPayment is for only one person at a time, and is limited to an amount of pre agreed call backs"
                                            "\nagreed at time of purchase",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.6.4 Changes to Price Terms for Subscriptions",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Hypnoseed reserves the right to change its pricing terms for Subscriptions to manuals at any"
                                            "\ntime and Hypnoseed will notify you in advance of such changes becoming effective.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.6.5 Future Functionality",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "You agree that your purchases are not contingent on the delivery of any future functionality or"
                                            "\nfeatures, or dependent on any oral or written public comments made by Hypnoseed regarding"
                                            "\nfuture functionality or features.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.7. Feedback",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: "We welcome feedback, comments and suggestions for improvements to the Services or Products"
                                                      "\n(“Feedback”). You can submit Feedback by emailing us at ​",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                  )
                                              ),
                                              TextSpan(
                                                  text: ' philip@hypnoseed.com.',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      launch('https://hypnoseedfront.sitecare.org/#/home');
                                                    }),
                                              TextSpan(
                                                  text: "​ . writing the"
                                                      "\nsubject matter as \“feedback\"You grant to us a non-exclusive, worldwide, perpetual, irrevocable,"
                                                      "\nfully-paid, royalty-free, sublicensable and transferable license under any and all intellectual"
                                                      "\nproperty rights that you own or control to use, copy, modify, create derivative works based upon"
                                                      "\nand otherwise exploit the Feedback for any purpose.",
                                                  style:GoogleFonts.poppins(
                                                      fontWeight: FontWeight.normal,
                                                      fontSize: 16
                                                  )
                                              )
                                            ]
                                        ),
                                      ),

                                      SizedBox(height: 20),
                                      Text(
                                        "2.8. Content and Content Rights",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "For purposes of these Terms, (i) “Content” means text, graphics, images, music, software, audio,"
                                            "\nvideo, works of authorship of any kind, and information or other materials that are posted, "
                                            "\ngenerated, provided or otherwise made available through the Services; and (ii) “User Content”"
                                            "\nmeans any Content that users (including you) provide to be made available through the"
                                            "\nServices. Content includes without limitation User Content.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.9. Content Ownership",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Hypnoseed does not claim any ownership rights in any User Content and nothing in these Terms"
                                            "\nwill be deemed to restrict any rights that you may have to use and exploit your User Content."
                                            "\nSubject to the foregoing, Hypnoseed and its licensors exclusively own all right, title and interest in"
                                            "\nand to the Services and Content, including all associated intellectual property rights. You"
                                            "\nacknowledge that the Services and Content are protected by copyright, trademark, and other"
                                            "\nlaws of the United States, United Kingdom and foreign countries. You agree not to remove, alter or"
                                            "\nobscure any copyright, trademark, service mark or other proprietary rights notices incorporated"
                                            "\nin or accompanying the Services or Content.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.10. Rights in User Content Granted by You",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "By making any User Content available through Services you hereby grant to Hypnoseed a non-"
                                            "\nexclusive, transferable, sublicenseable, worldwide, royalty-free license to use, copy, modify, "
                                            "\ncreate derivative works based upon, distribute, publicly display, publicly perform and distribute"
                                            "\nyour User Content in connection with operating and providing the Services and Content to you"
                                            "\nand to other users.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.11. Rights in Content Granted by Hypnoseed",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Subject to your compliance with these Terms, Calm grants you a limited, non-exclusive,"
                                            "\nnon-transferable, non-sublicenseable license to download, view, copy and display the Content solely"
                                            "\nin connection with your permitted use of the Services and solely for your personal and non-"
                                            "\ncommercial purposes.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.12. Rights and Terms for Apps",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.12.1. Rights in WebApp and Native App Granted by Hypnoseed",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Subject to your compliance with these Terms, Hypnoseed grants you a limited non-exclusive,"
                                            "\nnon-transferable, non-sublicenseable license to download and install a copy of the App on a"
                                            "\nmobile device or computer that you own or control and to run such copy of the App solely for"
                                            "\nyour own personal non-commercial purposes. Hypnoseed reserves all rights in and to the App"
                                            "\nnot expressly granted to you under these Terms. You may not copy the App, except for making a"
                                            "\nreasonable number of copies for backup or archival purposes. Except as expressly permitted in"
                                            "\nthese Terms, you may not: (i) copy, modify or create derivative works based on the App; (ii)"
                                            "\ndistribute, transfer, sublicense, lease, lend or rent the App to any third party; (iii) reverse engineer, "
                                            "\ndecompile or disassemble the App; or (iv) make the functionality of the App available to multiple"
                                            "\nusers through any means.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.13. Additional Terms for App store Apps",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "If you accessed or downloaded the App from the Apple Store, then you agree to use the App only:"
                                            "\n(i) on an Apple-branded product or device that runs iOS (Apple’s proprietary operating system"
                                            "\nsoftware); and (ii) as permitted by the “Usage Rules” set forth in the Apple Store Terms of Service.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "If you accessed or downloaded the App from an App Provider, then you acknowledge and agree"
                                            "\nthat: These Terms are concluded between you and Hypnoseed, and not with App Provider, and"
                                            "\nthat, as between Hypnoseed and the App Provider, Hypnoseed is solely responsible for the App.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "App Provider has no obligation to furnish any maintenance and support services with respect to"
                                            "\nthe App. In the event of any failure of the App to conform to any applicable warranty, you may"
                                            "\nnotify App Provider and App Provider will refund the purchase price for the App to you (if"
                                            "\napplicable) and, to the maximum extent permitted by applicable law, App Provider will have no"
                                            "\nother warranty obligation whatsoever with respect to the App. Any other claims, losses, liabilities, "
                                            "\ndamages, costs or expenses attributable to any failure of an App to conform to any warranty will"
                                            "\nbe the sole responsibility of Hypnoseed.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ), SizedBox(height: 10),
                                      Text(
                                        "App Provider has no obligation to furnish any maintenance and support services with respect to"
                                            "\nthe App. In the event of any failure of the App to conform to any applicable warranty, you may"
                                            "\nnotify App Provider and App Provider will refund the purchase price for the App to you (if"
                                            "\napplicable) and, to the maximum extent permitted by applicable law, App Provider will have no"
                                            "\nother warranty obligation whatsoever with respect to the App. Any other claims, losses, liabilities, "
                                            "\ndamages, costs or expenses attributable to any failure of an App to conform to any warranty will"
                                            "\nbe the sole responsibility of Hypnoseed.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "App Provider is not responsible for addressing any claims you have or any claims of any third party"
                                            "\nrelating to the App or your possession and use of the App, including, but not limited to: (i)"
                                            "\nproduct liability claims; (ii) any claim that the App fails to conform to any applicable legal or"
                                            "\nregulatory requirement; and (iii) claims arising under consumer protection or similar legislation.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "In the event of any third-party claim that the App or your possession and use of the App infringes"
                                            "\nthat third party’s intellectual property rights, Hypnoseed will be solely responsible for the"
                                            "\ninvestigation, defence, settlement and discharge of any such intellectual property infringement"
                                            "\nclaim to the extent required by these Terms.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "App Provider and its subsidiaries are third-party beneficiaries of these Terms as related to your"
                                            "\nlicense of the App, and that, upon your acceptance of the terms and conditions of these Terms, "
                                            "\nApp Provider will have the right (and will be deemed to have accepted the right) to enforce these"
                                            "\nTerms as related to your license of the App against you as a third party beneficiary thereof.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "You must also comply with all applicable third-party terms of service when using the App. You"
                                            "\nagree to comply with all U.S. and foreign export laws and regulations to ensure that neither the"
                                            "\nApp nor any technical data related thereto nor any direct product thereof is exported or re-"
                                            "\nexported directly or indirectly in violation of, or used for any purposes prohibited by, such laws"
                                            "\nand regulations. By using the App you represent and warrant that: (i) you are not located in a"
                                            "\ncountry that is subject to a U.S. Government embargo, or that has been designated by the U.S."
                                            "\nGovernment as a “terrorist supporting” country; and (ii) you are not listed on any U.S. Government"
                                            "\nlist of prohibited or restricted parties.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.14. Prohibitions",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "You agree not to do any of the following:",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),


                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text:"Post, upload, publish, submit or transmit any Content that: (i) infringes, misappropriates or"
                                                    "\nviolates a third party’s patent, copyright, trademark, trade secret, moral rights or other"
                                                    "\nintellectual property rights, or rights of publicity or privacy; (ii) violates, or encourages any"
                                                    "\nconduct that would violate, any applicable law or regulation or would give rise to civil liability;"
                                                    "\n(iii) is fraudulent, false, misleading or deceptive; (iv) is defamatory, obscene, pornographic, "
                                                    "\nvulgar or offensive; (v) promotes discrimination, bigotry, racism, hatred, harassment or harm"
                                                    "\nagainst any individual or group; (vi) is violent or threatening or promotes violence or actions"
                                                    "\nthat are threatening to any person or entity; or (vii) promotes illegal or harmful activities or substances;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Use, display, mirror or frame the Services, or any individual element within the Services,"
                                                    "\nHypnoseed’s name, any Hypnoseed trademark, logo or other proprietary information, or the"
                                                    "\nlayout and design of any page or form contained on a page, without Hypnoseed’s express"
                                                    "\nwritten consent; Access, tamper with, or use non-public areas of the Services, Hypnoseed’s"
                                                    "\ncomputer systems, or the technical delivery systems of Hypnoseed’s providers; Attempt to"
                                                    "\nprobe, scan, or test the vulnerability of any Hypnoseed system or network or breach any"
                                                    "\nsecurity or authentication measures;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Avoid, bypass, remove, deactivate, impair, descramble or otherwise circumvent any"
                                                    "\ntechnological measure implemented by Hypnoseed or any of Hypnoseed’s providers or any"
                                                    "\nother third party (including another user) to protect the Services;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Attempt to access or search the Services or download Collective Content from the Services"
                                                    "\nthrough the use of any engine, software, tool, agent, device or mechanism (including spiders,"
                                                    "\nrobots, crawlers, data mining tools or the like) other than the software and/or search agents"
                                                    "\nprovided by Hypnoseed or other generally available third party web browsers;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Send any unsolicited or unauthorized advertising, promotional materials, email, junk mail,"
                                                    "\nspam, chain letters or other form of solicitation;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Use any meta tags or other hidden text or metadata utilizing a Hypnoseed trademark, logo URL"
                                                    "\nor product name without Hypnoseed’s express written consent;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Use the Services for any commercial purpose or the benefit of any third party or in any manner"
                                                    "\nnot permitted by these Terms;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Forge any TCP/IP packet header or any part of the header information in any email or"
                                                    "\nnewsgroup posting, or in any way use the Services to send altered, deceptive or false source-"
                                                    "\nidentifying information; Attempt to decipher, decompile, disassemble or reverse engineer any"
                                                    "\nof the software used to provide the Services;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Interfere with, or attempt to interfere with, the access of any user, host or network, including,"
                                                    "\nwithout limitation, sending a virus, overloading, flooding, spamming, or mail-bombing the"
                                                    "\nServices; Collect or store any personally identifiable information from the Services from other"
                                                    "\nusers of the Services without their express permission;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Impersonate or misrepresent your affiliation with any person or entity;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Violate any applicable law or regulation; or Encourage or enable any other individual"
                                                    "\nto do any of the foregoing.",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text:  "Although we’re not obligated to monitor access to or use of the Services or Content or to"
                                                    "\nreview or edit any Content, we have the right to do so for the purpose of operating the"
                                                    "\nServices, to ensure compliance with these Terms, and to comply with applicable law or other"
                                                    "\nlegal requirements. We reserve the right, but are not obligated, to remove or disable access to"
                                                    "\nany Content, at any time and without notice, including, but not limited to, if we, at our sole"
                                                    "\ndiscretion, consider any Content to be objectionable or in violation of these Terms. We have"
                                                    "\nthe right to investigate violations of these Terms or conduct that affects the Services. We may"
                                                    "\nalso consult and cooperate with law enforcement authorities to prosecute users who violate"
                                                    "\nthe law.",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),

                                      SizedBox(height: 20),
                                      Text(
                                        "2.15. Links to Third Party Websites or Resources",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The Services and App may contain links to third-party websites or resources. We provide these"
                                            "\nlinks only as a convenience and are not responsible for the content, products or services on or"
                                            "\navailable from those websites or resources or links displayed on such websites. You acknowledge"
                                            "\nsole responsibility for and assume all risk arising from, your use of any third-party websites"
                                            "\nor resources.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.16. Termination",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                          text: TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: "We may terminate your access to and use of the Services, at our sole discretion, at any time and"
                                                        "\nwithout notice to you. You may cancel your Account at any time by sending an email to us at \n",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.normal
                                                    )
                                                ),
                                                TextSpan(
                                                    text: ' philip@hypnoseed.com.',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.normal,
                                                        color: Colors.blue
                                                    ),
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () {
                                                        launch('https://hypnoseedfront.sitecare.org/#/home');
                                                      }),
                                                TextSpan(
                                                    text: "If you purchase Subscription via an App Provider, you should also cancel"
                                                        "\nyour Subscription with the App Provider directly. Upon any termination, discontinuation or"
                                                        "\ncancellation of Services or your Account, all provisions of these Terms which by their nature"
                                                        "\nshould survive will survive, including, without limitation, ownership provisions, warranty"
                                                        "\ndisclaimers, limitations of liability, and dispute resolution provisions.",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 16
                                                    )
                                                )
                                              ]
                                          )
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.17. Warranty Disclaimers",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The Services, Products and Content are provided “as is,” without warranty of any kind. Without"
                                            "\nlimiting the foregoing, we explicitly disclaim any warranties of merchantability, fitness for a"
                                            "\nparticular purpose, quiet enjoyment or non-infringement and any warranties arising out of"
                                            "\ncourse of dealing or usage of trade.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "We make no warranty that the Services or Products will meet your requirements or be available"
                                            "\non an uninterrupted, secure, or error-free basis. We make no warranty regarding the quality, "
                                            "\naccuracy, timeliness, truthfulness, completeness or reliability of any Content.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),

                                      SizedBox(height: 20),
                                      Text(
                                        "2.18. Indemnity",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "You will indemnify and hold harmless Hypnoseed and its officers, directors, employee and agents,"
                                            "\nfrom and against any claims, disputes, demands, liabilities, damages, losses, and costs and"
                                            "\nexpenses, including, without limitation, reasonable legal and accounting fees, arising out of or in"
                                            "\nany way connected with (i) your access to or use of the Services or Content or (ii) your violation"
                                            "\nof these Terms.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),SizedBox(height: 20),
                                      Text(
                                        "2.19. Limitation of Liability",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Neither Hypnoseed nor any other party involved in creating, producing, or delivering the Services,"
                                            "\nProducts or Content will be liable for any incidental, special, exemplary or consequential"
                                            "\ndamages, including, but not limited to, lost profits, loss of data or goodwill, service interruption, "
                                            "\ncomputer damage or system failure or the cost of substitute Services or Products arising out of or"
                                            "\nin connection with these terms or from the use of or inability to use the Services, Products or"
                                            "\nContent, whether based on warranty, contract, tort (including negligence), product liability or any"
                                            "\nother legal theory, and whether or not Hypnoseed has been informed of the possibility of such"
                                            "\ndamage, even if a limited remedy set forth herein is found to have failed of its essential purpose."
                                            "\nSome jurisdictions do not allow the exclusion or limitation of liability for consequential or"
                                            "\nincidental damages, so the above limitation may not apply to you.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "In no event will Hypnoseed’s total liability arising out of or in connection with these terms or from"
                                            "\nthe use of or inability to use the Services, Products or Content exceed the amounts you have paid"
                                            "\nto Hypnoseed for use of the Services, Products or Content or fifty dollars (\$50\), if you have not had"
                                            "\nany payment obligations to Hypnoseed, as applicable. The exclusion and limitations of damages"
                                            "\nset forth above are fundamental elements of the basis of the bargain between Calm and you.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.20. Governing Law",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "These Terms and any action related thereto will be governed by the laws of the state of California"
                                            "\nand laws of the United Kingdom without regard to its conflict of laws provisions.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.21. Agreement to Arbitrate",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                          text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:  "You and Hypnoseed agree that any dispute, claim or controversy arising out of or relating to"
                                                      "\nthese Terms or the breach, termination, enforcement, interpretation or validity thereof or the use"
                                                      "\nof the Services, Products or Content (collectively, “Disputes”) will be settled by binding arbitration, "
                                                      "\nexcept that each party retains the right: (i) to bring an individual action in small claims court and"
                                                      "\n(ii) to seek injunctive or other equitable relief in a court of competent jurisdiction to prevent the"
                                                      "\nactual or threatened infringement, misappropriation or violation of a party’s copyrights, "
                                                      "\ntrademarks, trade secrets, patents or other intellectual property rights (the action described in"
                                                      "\nthe foregoing clause (ii), an “IP Protection Action”). Without limiting the preceding sentence, you"
                                                      "\nwill also have the right to litigate any other Dispute if you provide Hypnoseed with written notice"
                                                      "\nof your desire to do so by email at",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: ' philip@hypnoseed.com',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.normal,
                                                        color: Colors.blue
                                                    ),
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () {
                                                        launch('https://hypnoseedfront.sitecare.org/#/home');
                                                      }),
                                                TextSpan(
                                                    text: "within thirty (30) days following the"
                                                        "\ndate you first agree to these Terms (such notice, an “Arbitration Opt-out Notice”). If you don’t"
                                                        "\nprovide Hypnoseed with an Arbitration Opt-out Notice within the thirty (30) day period, you will be"
                                                        "\ndeemed to have knowingly and intentionally waived your right to litigate any Dispute except as"
                                                        "\nexpressly set forth in clauses (i) and (ii) above. The exclusive jurisdiction and venue of any IP"
                                                        "\nProtection Action or, if you timely provide Hypnoseed with an Arbitration Opt-out Notice, and each"
                                                        "\nof the parties hereto waives any objection to jurisdiction and venue in such courts. Unless you"
                                                        "\ntimely provide Hypnoseed with an Arbitration Opt-out Notice, you acknowledge and agree that"
                                                        "\nyou and Hypnoseed are each waiving the right to a trial by jury or to participate as a plaintiff or"
                                                        "\nclass member in any purported class action or representative proceeding. Further, unless both"
                                                        "\nyou and Hypnoseed otherwise agree in writing, the arbitrator may not consolidate more than one"
                                                        "\nperson’s claims, and may not otherwise preside over any form of any class or representative"
                                                        "\nproceeding. If this specific paragraph is held unenforceable, then the entirety of this “Dispute"
                                                        "\nResolution” section will be deemed void. Except as provided in the preceding sentence, this"
                                                        "\n“Dispute Resolution” section will survive any termination of these Terms.",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 16
                                                    )

                                                )
                                              ]
                                          )
                                      ),

                                      SizedBox(height: 20),
                                      Text(
                                        "2.22. Arbitration Rules",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text:"The arbitration will be administered by the American Arbitration Association (“AAA”) in"
                                                      "\naccordance with the Commercial Arbitration Rules and the Supplementary Procedures for"
                                                      "\nConsumer Related Disputes (the “AAA Rules”) then in effect, except as modified by this “Dispute"
                                                      "\nResolution” section. (The AAA Rules are available at",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                  )
                                              ),
                                              TextSpan(
                                                  text: ' www.adr.org/arb_med',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      launch('https://hypnoseedfront.sitecare.org/#/home');
                                                    }),
                                              TextSpan(
                                                  text: "or by calling the AAA"
                                                      "\nat 1-800-778-7879.) The Federal Arbitration Act will govern the interpretation and enforcement of"
                                                      "\nthis Section.",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.normal,
                                                      fontSize: 16
                                                  )
                                              )
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Though at going live this is underdecided as yet and until further notice all laws of the United"
                                            "\nKingdom will govern this Hypnoseed website and the arbitration system of the United Kingdom"
                                            "\nwill govern how the drama unfolds.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.23. Arbitration Process",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "A party who desires to initiate arbitration must provide the other party with a written Demand for"
                                            "\nArbitration as specified in the AAA Rules. (The AAA provides a general Demand for Arbitration form and a separate form for Demand for Arbitration"
                                            "\nfor California residents.) The arbitrator will be"
                                            "\neither a retired judge or an attorney licensed to practice law and will be selected by the"
                                            "\nparties from the AAA’s roster of arbitrators. If the parties are unable to agree upon an arbitrator"
                                            "\nwithin seven (7) days of delivery of the Demand for Arbitration, then the AAA will appoint the"
                                            "\narbitrator in accordance with the AAA Rules.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.24. Arbitration Location and Procedure",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Unless you and Hypnoseed otherwise agree, the arbitration will be conducted in the county where"
                                            "\nyou reside. If your claim does not exceed \$10,000\, then the arbitration will be conducted solely on"
                                            "\nthe basis of the documents that you and Hypnoseed submit to the arbitrator, unless you request"
                                            "\na hearing or the arbitrator determines that a hearing is necessary. If your claim exceeds \$10,000\, "
                                            "\nyour right to a hearing will be determined by the AAA Rules. Subject to the AAA Rules, the"
                                            "\narbitrator will have the discretion to direct a reasonable exchange of information by the parties, "
                                            "\nconsistent with the expedited nature of the arbitration.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.25. Arbitrator’s Decision",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The arbitrator will render an award within the time frame specified in the AAA Rules. The"
                                            "\narbitrator’s decision will include the essential findings and conclusions upon which the arbitrator"
                                            "\nbased the award. Judgment on the arbitration award may be entered in any court having"
                                            "\njurisdiction thereof. The arbitrator’s award of damages must be consistent with the terms of the"
                                            "\n“Limitation of Liability” section above as to the types and amounts of damages for which a party"
                                            "\nmay be held liable. The arbitrator may award declaratory or injunctive relief only in favour of the"
                                            "\nclaimant and only to the extent necessary to provide relief warranted by the claimant’s individual"
                                            "\nclaim. If you prevail in arbitration you will be entitled to an award of attorneys’ fees and expenses, "
                                            "\nto the extent provided under applicable law. Hypnoseed will not seek, and hereby waives all rights"
                                            "\nit may have under applicable law to recover, attorneys’ fees and expenses if it prevails in arbitration.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.26. Fees",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Your responsibility to pay any AAA filing, administrative and arbitrator fees will be solely as set"
                                            "\nforth in the AAA Rules or UK rules. However, if your claim for damages does not exceed \$75,000\,"
                                            "\nHypnoseed will pay all such fees unless the arbitrator finds that either the substance of your"
                                            "\nclaim or the relief sought in your Demand for Arbitration was frivolous or was brought for an"
                                            "\nimproper purpose (as measured by the standards set forth in Federal Rule of Civil Procedure"
                                            "\n11(b)).",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.27. Changes",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                          text: TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: "Notwithstanding the provisions of the “Modification” section above, if Hypnoseed changes this"
                                                        "\n“Dispute Resolution” section after the date you first accepted these Terms (or accepted any"
                                                        "\nsubsequent changes to these Terms), you may reject any such change by sending us written"
                                                        "\nnotice (including by email to",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.normal
                                                    )
                                                ),
                                                TextSpan(
                                                    text: ' philip@hypnoseed.com',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.normal,
                                                        color: Colors.blue
                                                    ),
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () {
                                                        launch('https://hypnoseedfront.sitecare.org/#/home');
                                                      }
                                                ),
                                                TextSpan(
                                                    text: ") within 30 days of the date such change"
                                                        "\nbecame effective, as indicated in the “Last Updated” date above or in the date of Hypnoseed’s"
                                                        "\nemail to you notifying you of such change. By rejecting any change, you are agreeing that you"
                                                        "\nwill arbitrate any Dispute between you and Hypnoseed in accordance with the provisions of this"
                                                        "\n“Dispute Resolution” section as of the date you first accepted these Terms (or accepted any"
                                                        "\nsubsequent changes to these Terms).",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.normal
                                                    )
                                                )

                                              ]
                                          )),


                                      SizedBox(height: 20),
                                      Text(
                                        "2.28. General Terms",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "These Terms constitute the entire and exclusive understanding and agreement between"
                                            "\nHypnoseed and you regarding the Services, Products and Content, and these Terms superseed"
                                            "\nand replace any and all prior oral or written understandings or agreements between Hypnoseed"
                                            "\nand you regarding the Services, Products and Content. If any provision of these Terms is held"
                                            "\ninvalid or unenforceable (either by an arbitrator appointed pursuant to the terms of the"
                                            "\n“Arbitration” section above or by court of competent jurisdiction, but only if you timely opt out of"
                                            "\narbitration by sending us an Arbitration Opt-out Notice in accordance with the terms set forth"
                                            "\nabove), that provision will be enforced to the maximum extent permissible and the other"
                                            "\nprovisions of these Terms will remain in full force and effect. You may not assign or transfer these Terms, "
                                            "\nby operation of law or otherwise, without Calm’s prior written consent. Any attempt by you"
                                            "\nto assign or transfer these Terms, without such consent, will be null and of no effect. Hypnoseed"
                                            "\nmay freely assign or transfer these Terms without restriction. Subject to the foregoing, these"
                                            "\nTerms will bind and inure to the benefit of the parties, their successors and permitted assigns.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Any notices or other communications provided by Hypnoseed under these Terms, including those"
                                            "\nregarding modifications to these Terms, will be given: (i) by Hypnoseed via email; or (ii) by"
                                            "\nposting to the Services. For notices made by e-mail, the date of receipt will be deemed the date"
                                            "\non which such notice is transmitted. Hypnoseed’s failure to enforce any right or provision of these"
                                            "\nTerms will not be considered a waiver of such right or provision. The waiver of any such right or"
                                            "\nprovision will be effective only if in writing and signed by a duly authorized representative of"
                                            "\nHypnoseed. Except as expressly set forth in these Terms, the exercise by either party of any of its "
                                            "\nremedies under these Terms will be without prejudice to its other remedies under these Terms or"
                                            "\notherwise.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.29. Contact Information",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                          text: TextSpan(
                                              children: [
                                                TextSpan(text: 'If you have any questions about these Terms or the Services or Products, please contact'
                                                    '\nHypnoseed at',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: ' philip@hypnoseed.com',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.normal,
                                                        color: Colors.blue
                                                    ),
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () {
                                                        launch('https://hypnoseedfront.sitecare.org/#/home');
                                                      }),
                                              ]
                                          )),
                                    ],
                                  ),
                                ):
                                Column(
                                  mainAxisAlignment:MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "1.General Site Information",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 36
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "1.1 CopyRight",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "The Hypnoseed information and content was written and compiled by Philip C.J. Cooper of\nKarmakanic ltd, U.K. for the exclusive use of Hypnoseed. The information is protected by copyright\nand may not be reprinted without the written permission of Philip C.J.Cooper, Karmakanic ltd and\nHypnoseed.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "1.2. Personal information",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Hypnoseed does not share any personal information with third parties. We don't like it ourselves\nand we believe we treat people as we like to be treated. Your personal information on Hypnoseed\nis very personal and not for the use of others. Full stop. We use your data to improve your\nexperience, like remembering your preferences, choices and status on the Hypnoseed site.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Your phone number you store as data is used solely by you for use to receive audio and video\nfiles that you the user programs themselves. You can disallow us to send you occasional\nnotifications, such as a payment reminder and Trigger Happy upgrades.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "1.3. Disclaimer",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "The Oracle and Mantra test and results are intended as a convenient tool to provide practical\ninformation on your psychic profile constitutional type. It is not intended to diagnose, treat, cure\nor prevent any disease. In addition, it should be noted that while this information should be\nconsidered highly useful it is not meant to replace the skilled constitutional analysis of a\nprofessionally trained Therapist.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Hypnoseed is based around the concept of suggestion. Everything in life could be said to be a\nsuggestion. You choose to either believe or disbelief it. Truth changes through history, todays\ntruth is tomorrow’s lie. For instance we used to believe the earth was the centre of the universe,\nthen that the earth was flat and now its round. We didn't believe in climate change but now it is\nrecognised as given by news outlets.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Hypnoseed is based on techniques already widely used and the experience gained from the\ntechnique. It is best to follow the technique and then decide if it works, than academically\ndiscussing it, than the other way round. Any claims you consider Hypnoseed to be making are\nconsidered by Hypnoseed to be a suggestion, not a truth. A tendency expressed or unexpressed.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "The contents of this website, such as text, graphics, images and other material are intended for\ninformational and educational purposes only and not for the purpose of obtaining medical\nadvice. The contents of this website are not intended to substitute for professional medical\nadvice, diagnosis or treatment. Although we take efforts to keep the medical information on our\nwebsite updated, we cannot guarantee that the information on our website reflects the most up-\nto-date research.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "The idea in times of medical need all disciplines of healing combine and compliment each other\nto offer the person the best possible route map to health and wellness.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2. Terms of Service",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 36
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Last updated 8th April 2019",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "Welcome to karmakanic ltd. which provides our website located at",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                )
                                            ),
                                            TextSpan(
                                                text: ' www.hypnoseed.com',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.blue
                                                ),
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () {
                                                    launch('https://hypnoseedfront.sitecare.org/#/home');
                                                  }),
                                            TextSpan(
                                                text: "(the\n“Site”) and our self hypnosis, meditation and self-care services accessible via our Site and our\nmobile device application (“App”). To make these Terms easier to read, the Site, our services and\nApp are collectively called the “Services.” Please read these Terms of Service (the “Terms”)\ncarefully because they govern your use of our Services.",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 16
                                                )
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.1. Agreement to Terms",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "By using our Services, you agree to be bound by these Terms. If you don’t agree to be bound by\nthese Terms, do not use the Services.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.2. Privacy policy",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Please refer to our Privacy Policy for information on how we collect, use and disclose\ninformation from our users. You acknowledge and agree that your use of the Services is subject to our Privacy\nPolicy.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.3. Changes to Terms or Services",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "We may modify the Terms at any time, in our sole discretion. If we do so, we’ll let you know either"
                                          "\nby posting the modified Terms on the Site or through other communications. It’s important that"
                                          "\nyou review the Terms whenever we modify them because if you continue to use the Services after"
                                          "\nwe have posted modified Terms on the Site, you are indicating to us that you agree to be bound"
                                          "\nby the modified Terms. If you don’t agree to be bound by the modified Terms, then you may not"
                                          "\nuse the Services anymore. Because our Services are evolving over time we may change or"
                                          "\ndiscontinue all or any part of the Services, at any time and without notice, at our sole discretion.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.4. Arbitration Notice",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Unless you opt out of arbitration within 30 days of the date you first agree to these terms by"
                                          "\nfollowing the opt-out procedure specified in the “Arbitration” section below, and except for"
                                          "\ncertain types of disputes described in the “Arbitration“ section below, you agree that disputes"
                                          "\nbetween you and Hypnoseed will be resolved by binding, individual arbitration and you are"
                                          "\nwaiving your right to a trial by jury or to participate as a plaintiff or class member in any"
                                          "\npurported class action or representative proceeding.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.5. Who May Use the Services ?",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "2.5.1 Eligibility",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "You may use the Services only if you are 13 years or older and are not barred from using the\nServices under applicable law. To make a purchase via the Services (described in the Section\ntitled “Purchases” below), you must be 18 years or older and capable of forming a binding\ncontract., we cannot guarantee that the information on our website reflects the most up-\nto-date research.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "2.5.2 Registration and Your Information",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "If you want to use certain features of the Services you’ll have to create an account (“Account”)."
                                          "\nYou can do this via the App or the Site or through your account with certain third-party social"
                                          "\nnetworking services such as Facebook (each, an “SNS Account”)."
                                          "\nIf you choose the SNS Account option we’ll create your Account by extracting from your SNS Account certain personal"
                                          "\ninformation such as your name and email address and other personal information that your"
                                          "\nprivacy settings on the SNS Account permit us to access",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "2.5.3 Using the Services",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Via the Services, users can select from a variety of options to create customized relaxation and"
                                          "\nself-improvement sessions. You can also use the paid functionality of the Services to utilize the"
                                          "\nenhanced functionality of the Services or purchase items that are offered for sale through the"
                                          "\nServices (the “Products”), as described in further detail under the Section titled “Purchases” below."
                                          "\nYou understand and agree that the Services, Products and any other information you learn from"
                                          "\nHypnoseed are not intended, designed, or implied to diagnose, prevent, or treat any condition or"
                                          "\ndisease, to ascertain the state of your health, or to be a substitute for professional medical care."
                                          "\nNot all activities described on the Services or Products are suitable for everyone. Do not use"
                                          "\nthe Services while driving, operating heavy machinery, or performing other tasks that require"
                                          "\nattention and concentration. You understand and agree that you are solely responsible for your"
                                          "\nuse of the Services.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.6. Purchases",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.6.1 Fees",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Calm offers certain enhanced features of the Services which you can purchase as a monthly,"
                                          "\nyearly or lifetime subscription (“Subscription”). A description of features associated with"
                                          "\nSubscriptions is available via the Services. When you purchase a Subscription or a Product (each, "
                                          "\na “Transaction”), we may ask you to supply additional information relevant to your Transaction, "
                                          "\nsuch as your credit card number, the expiration date of your credit card and your address(es) for"
                                          "\nbilling and delivery (such information, “Payment Information”). You represent and warrant"
                                          "\nthat you have the legal right to use all payment method(s) represented by any such Payment"
                                          "\nInformation. The amounts due and payable by you for a Transaction through the Services will be"
                                          "\npresented to you before you place your order. If you choose to initiate a Transaction via the"
                                          "\nServices, you authorize us to provide your Payment Information to third party service providers so"
                                          "\nwe can complete your Transaction and agree (a) to pay the applicable fees and any taxes; (b)"
                                          "\nthat Hypnoseed may charge your credit card or third party payment processing account,"
                                          "\nincluding, but not limited to, your account with the app store or distribution platform (like the"
                                          "\nApple App Store, Google Play or the Amazon Appstore) where the App is made available (each,"
                                          "\nan “App Provider”), for verification, pre-authorization and payment purposes; and (c) to bear any"
                                          "\nadditional charges that your App Provider, bank or other financial service provider may levy on"
                                          "\nyou as well as any taxes or fees that may apply to your order. You’ll receive a confirmation email"
                                          "\nafter we confirm the payment for your order. Your order is not binding on Hypnoseed until"
                                          "\naccepted and confirmed by Hypnoseed. All payments made are non-refundable and non-"
                                          "\ntransferable except as expressly provided in these Terms.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "If you have any concerns or objections regarding charges, you agree to raise them with us first"
                                          "\nand you agree not to cancel or reject any credit card or third party payment processing charges"
                                          "\nunless you have made a reasonable attempt at resolving the matter directly with Hypnoseed."
                                          "\nHypnoseed reserves the right to not process or to cancel your order in certain circumstances, "
                                          "\nfor example, if your credit card is declined, if we suspect the request or order is fraudulent, or in other"
                                          "\ncircumstances Hypnoseed deems appropriate in its sole discretion. Hypnoseed also reserves the"
                                          "\nright, in its sole discretion, to take steps to verify your identity in connection with your order. You"
                                          "\nmay need to provide additional information to verify your identity before completing your"
                                          "\nTransaction (such information is included within the definition of Payment Information)."
                                          "\nHypnoseed will either not charge you or refund the charges for orders that we do not process or cancel.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "2.6.2 Title, Risk of Loss",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "The risk of loss and title for Products purchased by you pass from Hypnoseed to you on shipment"
                                          "\nfrom Hypnoseed’s facility. All shipments are governed in accordance to Hypnoseed standard"
                                          "\nShipping Terms.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "2.6.3 Return Policy",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "If for any reason, you are not satisfied with the Product you have purchased and you want to\n"
                                          "return the Product, please refer to our Return Policy for information on how you may return eligible"
                                          "\nProducts.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "All amounts are payable and charged: for one-off purchase at the time you place your order."
                                          "\nPayment is for only one person at a time, and is limited to an amount of pre agreed call backs"
                                          "\nagreed at time of purchase",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "2.6.4 Changes to Price Terms for Subscriptions",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Hypnoseed reserves the right to change its pricing terms for Subscriptions to manuals at any"
                                          "\ntime and Hypnoseed will notify you in advance of such changes becoming effective.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "2.6.5 Future Functionality",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "You agree that your purchases are not contingent on the delivery of any future functionality or"
                                          "\nfeatures, or dependent on any oral or written public comments made by Hypnoseed regarding"
                                          "\nfuture functionality or features.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.7. Feedback",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "We welcome feedback, comments and suggestions for improvements to the Services or Products"
                                                    "\n(“Feedback”). You can submit Feedback by emailing us at ​",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                )
                                            ),
                                            TextSpan(
                                                text: ' philip@hypnoseed.com.',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.blue
                                                ),
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () {
                                                    launch('https://hypnoseedfront.sitecare.org/#/home');
                                                  }),
                                            TextSpan(
                                                text: "​ . writing the"
                                                    "\nsubject matter as \“feedback\"You grant to us a non-exclusive, worldwide, perpetual, irrevocable,"
                                                    "\nfully-paid, royalty-free, sublicensable and transferable license under any and all intellectual"
                                                    "\nproperty rights that you own or control to use, copy, modify, create derivative works based upon"
                                                    "\nand otherwise exploit the Feedback for any purpose.",
                                                style:GoogleFonts.poppins(
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 16
                                                )
                                            )
                                          ]
                                      ),
                                    ),

                                    SizedBox(height: 20),
                                    Text(
                                      "2.8. Content and Content Rights",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "For purposes of these Terms, (i) “Content” means text, graphics, images, music, software, audio,"
                                          "\nvideo, works of authorship of any kind, and information or other materials that are posted, "
                                          "\ngenerated, provided or otherwise made available through the Services; and (ii) “User Content”"
                                          "\nmeans any Content that users (including you) provide to be made available through the"
                                          "\nServices. Content includes without limitation User Content.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.9. Content Ownership",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Hypnoseed does not claim any ownership rights in any User Content and nothing in these Terms"
                                          "\nwill be deemed to restrict any rights that you may have to use and exploit your User Content."
                                          "\nSubject to the foregoing, Hypnoseed and its licensors exclusively own all right, title and interest in"
                                          "\nand to the Services and Content, including all associated intellectual property rights. You"
                                          "\nacknowledge that the Services and Content are protected by copyright, trademark, and other"
                                          "\nlaws of the United States, United Kingdom and foreign countries. You agree not to remove, alter or"
                                          "\nobscure any copyright, trademark, service mark or other proprietary rights notices incorporated"
                                          "\nin or accompanying the Services or Content.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.10. Rights in User Content Granted by You",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "By making any User Content available through Services you hereby grant to Hypnoseed a non-"
                                          "\nexclusive, transferable, sublicenseable, worldwide, royalty-free license to use, copy, modify, "
                                          "\ncreate derivative works based upon, distribute, publicly display, publicly perform and distribute"
                                          "\nyour User Content in connection with operating and providing the Services and Content to you"
                                          "\nand to other users.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.11. Rights in Content Granted by Hypnoseed",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Subject to your compliance with these Terms, Calm grants you a limited, non-exclusive,"
                                          "\nnon-transferable, non-sublicenseable license to download, view, copy and display the Content solely"
                                          "\nin connection with your permitted use of the Services and solely for your personal and non-"
                                          "\ncommercial purposes.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.12. Rights and Terms for Apps",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "2.12.1. Rights in WebApp and Native App Granted by Hypnoseed",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Subject to your compliance with these Terms, Hypnoseed grants you a limited non-exclusive,"
                                          "\nnon-transferable, non-sublicenseable license to download and install a copy of the App on a"
                                          "\nmobile device or computer that you own or control and to run such copy of the App solely for"
                                          "\nyour own personal non-commercial purposes. Hypnoseed reserves all rights in and to the App"
                                          "\nnot expressly granted to you under these Terms. You may not copy the App, except for making a"
                                          "\nreasonable number of copies for backup or archival purposes. Except as expressly permitted in"
                                          "\nthese Terms, you may not: (i) copy, modify or create derivative works based on the App; (ii)"
                                          "\ndistribute, transfer, sublicense, lease, lend or rent the App to any third party; (iii) reverse engineer, "
                                          "\ndecompile or disassemble the App; or (iv) make the functionality of the App available to multiple"
                                          "\nusers through any means.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.13. Additional Terms for App store Apps",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "If you accessed or downloaded the App from the Apple Store, then you agree to use the App only:"
                                          "\n(i) on an Apple-branded product or device that runs iOS (Apple’s proprietary operating system"
                                          "\nsoftware); and (ii) as permitted by the “Usage Rules” set forth in the Apple Store Terms of Service.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "If you accessed or downloaded the App from an App Provider, then you acknowledge and agree"
                                          "\nthat: These Terms are concluded between you and Hypnoseed, and not with App Provider, and"
                                          "\nthat, as between Hypnoseed and the App Provider, Hypnoseed is solely responsible for the App.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "App Provider has no obligation to furnish any maintenance and support services with respect to"
                                          "\nthe App. In the event of any failure of the App to conform to any applicable warranty, you may"
                                          "\nnotify App Provider and App Provider will refund the purchase price for the App to you (if"
                                          "\napplicable) and, to the maximum extent permitted by applicable law, App Provider will have no"
                                          "\nother warranty obligation whatsoever with respect to the App. Any other claims, losses, liabilities, "
                                          "\ndamages, costs or expenses attributable to any failure of an App to conform to any warranty will"
                                          "\nbe the sole responsibility of Hypnoseed.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ), SizedBox(height: 10),
                                    Text(
                                      "App Provider has no obligation to furnish any maintenance and support services with respect to"
                                          "\nthe App. In the event of any failure of the App to conform to any applicable warranty, you may"
                                          "\nnotify App Provider and App Provider will refund the purchase price for the App to you (if"
                                          "\napplicable) and, to the maximum extent permitted by applicable law, App Provider will have no"
                                          "\nother warranty obligation whatsoever with respect to the App. Any other claims, losses, liabilities, "
                                          "\ndamages, costs or expenses attributable to any failure of an App to conform to any warranty will"
                                          "\nbe the sole responsibility of Hypnoseed.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "App Provider is not responsible for addressing any claims you have or any claims of any third party"
                                          "\nrelating to the App or your possession and use of the App, including, but not limited to: (i)"
                                          "\nproduct liability claims; (ii) any claim that the App fails to conform to any applicable legal or"
                                          "\nregulatory requirement; and (iii) claims arising under consumer protection or similar legislation.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "In the event of any third-party claim that the App or your possession and use of the App infringes"
                                          "\nthat third party’s intellectual property rights, Hypnoseed will be solely responsible for the"
                                          "\ninvestigation, defence, settlement and discharge of any such intellectual property infringement"
                                          "\nclaim to the extent required by these Terms.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "App Provider and its subsidiaries are third-party beneficiaries of these Terms as related to your"
                                          "\nlicense of the App, and that, upon your acceptance of the terms and conditions of these Terms, "
                                          "\nApp Provider will have the right (and will be deemed to have accepted the right) to enforce these"
                                          "\nTerms as related to your license of the App against you as a third party beneficiary thereof.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "You must also comply with all applicable third-party terms of service when using the App. You"
                                          "\nagree to comply with all U.S. and foreign export laws and regulations to ensure that neither the"
                                          "\nApp nor any technical data related thereto nor any direct product thereof is exported or re-"
                                          "\nexported directly or indirectly in violation of, or used for any purposes prohibited by, such laws"
                                          "\nand regulations. By using the App you represent and warrant that: (i) you are not located in a"
                                          "\ncountry that is subject to a U.S. Government embargo, or that has been designated by the U.S."
                                          "\nGovernment as a “terrorist supporting” country; and (ii) you are not listed on any U.S. Government"
                                          "\nlist of prohibited or restricted parties.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.14. Prohibitions",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "You agree not to do any of the following:",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),


                                    SizedBox(height: 15),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:  "• ",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600
                                              ),
                                          ),
                                          TextSpan(
                                            text:"Post, upload, publish, submit or transmit any Content that: (i) infringes, misappropriates or"
                                                "\nviolates a third party’s patent, copyright, trademark, trade secret, moral rights or other"
                                                "\nintellectual property rights, or rights of publicity or privacy; (ii) violates, or encourages any"
                                                "\nconduct that would violate, any applicable law or regulation or would give rise to civil liability;"
                                                "\n(iii) is fraudulent, false, misleading or deceptive; (iv) is defamatory, obscene, pornographic, "
                                                "\nvulgar or offensive; (v) promotes discrimination, bigotry, racism, hatred, harassment or harm"
                                                "\nagainst any individual or group; (vi) is violent or threatening or promotes violence or actions"
                                                "\nthat are threatening to any person or entity; or (vii) promotes illegal or harmful activities or substances;",
                                            style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal
                                            ),
                                          )
                                        ]

                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:  "• ",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            TextSpan(
                                              text: "Use, display, mirror or frame the Services, or any individual element within the Services,"
                                                  "\nHypnoseed’s name, any Hypnoseed trademark, logo or other proprietary information, or the"
                                                  "\nlayout and design of any page or form contained on a page, without Hypnoseed’s express"
                                                  "\nwritten consent; Access, tamper with, or use non-public areas of the Services, Hypnoseed’s"
                                                  "\ncomputer systems, or the technical delivery systems of Hypnoseed’s providers; Attempt to"
                                                  "\nprobe, scan, or test the vulnerability of any Hypnoseed system or network or breach any"
                                                  "\nsecurity or authentication measures;",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal
                                              ),
                                            )
                                          ]

                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:  "• ",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            TextSpan(
                                              text: "Avoid, bypass, remove, deactivate, impair, descramble or otherwise circumvent any"
                                                  "\ntechnological measure implemented by Hypnoseed or any of Hypnoseed’s providers or any"
                                                  "\nother third party (including another user) to protect the Services;",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal
                                              ),
                                            )
                                          ]

                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:  "• ",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            TextSpan(
                                              text: "Attempt to access or search the Services or download Collective Content from the Services"
                                                  "\nthrough the use of any engine, software, tool, agent, device or mechanism (including spiders,"
                                                  "\nrobots, crawlers, data mining tools or the like) other than the software and/or search agents"
                                                  "\nprovided by Hypnoseed or other generally available third party web browsers;",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal
                                              ),
                                            )
                                          ]

                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:  "• ",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            TextSpan(
                                              text: "Send any unsolicited or unauthorized advertising, promotional materials, email, junk mail,"
                                                  "\nspam, chain letters or other form of solicitation;",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal
                                              ),
                                            )
                                          ]

                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:  "• ",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            TextSpan(
                                              text: "Use any meta tags or other hidden text or metadata utilizing a Hypnoseed trademark, logo URL"
                                                  "\nor product name without Hypnoseed’s express written consent;",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal
                                              ),
                                            )
                                          ]

                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:  "• ",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            TextSpan(
                                              text: "Use the Services for any commercial purpose or the benefit of any third party or in any manner"
                                                  "\nnot permitted by these Terms;",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal
                                              ),
                                            )
                                          ]

                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:  "• ",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            TextSpan(
                                              text: "Forge any TCP/IP packet header or any part of the header information in any email or"
                                                  "\nnewsgroup posting, or in any way use the Services to send altered, deceptive or false source-"
                                                  "\nidentifying information; Attempt to decipher, decompile, disassemble or reverse engineer any"
                                                  "\nof the software used to provide the Services;",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal
                                              ),
                                            )
                                          ]

                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:  "• ",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            TextSpan(
                                              text: "Interfere with, or attempt to interfere with, the access of any user, host or network, including,"
                                                  "\nwithout limitation, sending a virus, overloading, flooding, spamming, or mail-bombing the"
                                                  "\nServices; Collect or store any personally identifiable information from the Services from other"
                                                  "\nusers of the Services without their express permission;",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal
                                              ),
                                            )
                                          ]

                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:  "• ",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            TextSpan(
                                              text: "Impersonate or misrepresent your affiliation with any person or entity;",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal
                                              ),
                                            )
                                          ]

                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:  "• ",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            TextSpan(
                                              text: "Violate any applicable law or regulation; or Encourage or enable any other individual"
                                                  "\nto do any of the foregoing.",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal
                                              ),
                                            )
                                          ]

                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:  "• ",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            TextSpan(
                                              text:  "Although we’re not obligated to monitor access to or use of the Services or Content or to"
                                                  "\nreview or edit any Content, we have the right to do so for the purpose of operating the"
                                                  "\nServices, to ensure compliance with these Terms, and to comply with applicable law or other"
                                                  "\nlegal requirements. We reserve the right, but are not obligated, to remove or disable access to"
                                                  "\nany Content, at any time and without notice, including, but not limited to, if we, at our sole"
                                                  "\ndiscretion, consider any Content to be objectionable or in violation of these Terms. We have"
                                                  "\nthe right to investigate violations of these Terms or conduct that affects the Services. We may"
                                                  "\nalso consult and cooperate with law enforcement authorities to prosecute users who violate"
                                                  "\nthe law.",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal
                                              ),
                                            )
                                          ]

                                      ),
                                    ),

                                    SizedBox(height: 20),
                                    Text(
                                      "2.15. Links to Third Party Websites or Resources",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "The Services and App may contain links to third-party websites or resources. We provide these"
                                          "\nlinks only as a convenience and are not responsible for the content, products or services on or"
                                          "\navailable from those websites or resources or links displayed on such websites. You acknowledge"
                                          "\nsole responsibility for and assume all risk arising from, your use of any third-party websites"
                                          "\nor resources.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.16. Termination",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: "We may terminate your access to and use of the Services, at our sole discretion, at any time and"
                                                      "\nwithout notice to you. You may cancel your Account at any time by sending an email to us at \n",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                  )
                                              ),
                                              TextSpan(
                                                  text: ' philip@hypnoseed.com.',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      launch('https://hypnoseedfront.sitecare.org/#/home');
                                                    }),
                                              TextSpan(
                                                  text: "If you purchase Subscription via an App Provider, you should also cancel"
                                                      "\nyour Subscription with the App Provider directly. Upon any termination, discontinuation or"
                                                      "\ncancellation of Services or your Account, all provisions of these Terms which by their nature"
                                                      "\nshould survive will survive, including, without limitation, ownership provisions, warranty"
                                                      "\ndisclaimers, limitations of liability, and dispute resolution provisions.",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.normal,
                                                      fontSize: 16
                                                  )
                                              )
                                            ]
                                        )
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.17. Warranty Disclaimers",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "The Services, Products and Content are provided “as is,” without warranty of any kind. Without"
                                          "\nlimiting the foregoing, we explicitly disclaim any warranties of merchantability, fitness for a"
                                          "\nparticular purpose, quiet enjoyment or non-infringement and any warranties arising out of"
                                          "\ncourse of dealing or usage of trade.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "We make no warranty that the Services or Products will meet your requirements or be available"
                                          "\non an uninterrupted, secure, or error-free basis. We make no warranty regarding the quality, "
                                          "\naccuracy, timeliness, truthfulness, completeness or reliability of any Content.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),

                                    SizedBox(height: 20),
                                    Text(
                                      "2.18. Indemnity",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "You will indemnify and hold harmless Hypnoseed and its officers, directors, employee and agents,"
                                          "\nfrom and against any claims, disputes, demands, liabilities, damages, losses, and costs and"
                                          "\nexpenses, including, without limitation, reasonable legal and accounting fees, arising out of or in"
                                          "\nany way connected with (i) your access to or use of the Services or Content or (ii) your violation"
                                          "\nof these Terms.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),SizedBox(height: 20),
                                    Text(
                                      "2.19. Limitation of Liability",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Neither Hypnoseed nor any other party involved in creating, producing, or delivering the Services,"
                                          "\nProducts or Content will be liable for any incidental, special, exemplary or consequential"
                                          "\ndamages, including, but not limited to, lost profits, loss of data or goodwill, service interruption, "
                                          "\ncomputer damage or system failure or the cost of substitute Services or Products arising out of or"
                                          "\nin connection with these terms or from the use of or inability to use the Services, Products or"
                                          "\nContent, whether based on warranty, contract, tort (including negligence), product liability or any"
                                          "\nother legal theory, and whether or not Hypnoseed has been informed of the possibility of such"
                                          "\ndamage, even if a limited remedy set forth herein is found to have failed of its essential purpose."
                                          "\nSome jurisdictions do not allow the exclusion or limitation of liability for consequential or"
                                          "\nincidental damages, so the above limitation may not apply to you.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "In no event will Hypnoseed’s total liability arising out of or in connection with these terms or from"
                                          "\nthe use of or inability to use the Services, Products or Content exceed the amounts you have paid"
                                          "\nto Hypnoseed for use of the Services, Products or Content or fifty dollars (\$50\), if you have not had"
                                          "\nany payment obligations to Hypnoseed, as applicable. The exclusion and limitations of damages"
                                          "\nset forth above are fundamental elements of the basis of the bargain between Calm and you.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.20. Governing Law",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "These Terms and any action related thereto will be governed by the laws of the state of California"
                                          "\nand laws of the United Kingdom without regard to its conflict of laws provisions.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.21. Agreement to Arbitrate",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "You and Hypnoseed agree that any dispute, claim or controversy arising out of or relating to"
                                                    "\nthese Terms or the breach, termination, enforcement, interpretation or validity thereof or the use"
                                                    "\nof the Services, Products or Content (collectively, “Disputes”) will be settled by binding arbitration, "
                                                    "\nexcept that each party retains the right: (i) to bring an individual action in small claims court and"
                                                    "\n(ii) to seek injunctive or other equitable relief in a court of competent jurisdiction to prevent the"
                                                    "\nactual or threatened infringement, misappropriation or violation of a party’s copyrights, "
                                                    "\ntrademarks, trade secrets, patents or other intellectual property rights (the action described in"
                                                    "\nthe foregoing clause (ii), an “IP Protection Action”). Without limiting the preceding sentence, you"
                                                    "\nwill also have the right to litigate any other Dispute if you provide Hypnoseed with written notice"
                                                    "\nof your desire to do so by email at",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              ),
                                              TextSpan(
                                                  text: ' philip@hypnoseed.com',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      launch('https://hypnoseedfront.sitecare.org/#/home');
                                                    }),
                                              TextSpan(
                                                  text: "within thirty (30) days following the"
                                                      "\ndate you first agree to these Terms (such notice, an “Arbitration Opt-out Notice”). If you don’t"
                                                      "\nprovide Hypnoseed with an Arbitration Opt-out Notice within the thirty (30) day period, you will be"
                                                      "\ndeemed to have knowingly and intentionally waived your right to litigate any Dispute except as"
                                                      "\nexpressly set forth in clauses (i) and (ii) above. The exclusive jurisdiction and venue of any IP"
                                                      "\nProtection Action or, if you timely provide Hypnoseed with an Arbitration Opt-out Notice, and each"
                                                      "\nof the parties hereto waives any objection to jurisdiction and venue in such courts. Unless you"
                                                      "\ntimely provide Hypnoseed with an Arbitration Opt-out Notice, you acknowledge and agree that"
                                                      "\nyou and Hypnoseed are each waiving the right to a trial by jury or to participate as a plaintiff or"
                                                      "\nclass member in any purported class action or representative proceeding. Further, unless both"
                                                      "\nyou and Hypnoseed otherwise agree in writing, the arbitrator may not consolidate more than one"
                                                      "\nperson’s claims, and may not otherwise preside over any form of any class or representative"
                                                      "\nproceeding. If this specific paragraph is held unenforceable, then the entirety of this “Dispute"
                                                      "\nResolution” section will be deemed void. Except as provided in the preceding sentence, this"
                                                      "\n“Dispute Resolution” section will survive any termination of these Terms.",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.normal,
                                                      fontSize: 16
                                                  )

                                              )
                                            ]
                                        )
                                    ),

                                    SizedBox(height: 20),
                                    Text(
                                      "2.22. Arbitration Rules",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text:"The arbitration will be administered by the American Arbitration Association (“AAA”) in"
                                                    "\naccordance with the Commercial Arbitration Rules and the Supplementary Procedures for"
                                                    "\nConsumer Related Disputes (the “AAA Rules”) then in effect, except as modified by this “Dispute"
                                                    "\nResolution” section. (The AAA Rules are available at",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                )
                                            ),
                                            TextSpan(
                                                text: ' www.adr.org/arb_med',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.blue
                                                ),
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () {
                                                    launch('https://hypnoseedfront.sitecare.org/#/home');
                                                  }),
                                            TextSpan(
                                                text: "or by calling the AAA"
                                                    "\nat 1-800-778-7879.) The Federal Arbitration Act will govern the interpretation and enforcement of"
                                                    "\nthis Section.",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 16
                                                )
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Though at going live this is underdecided as yet and until further notice all laws of the United"
                                          "\nKingdom will govern this Hypnoseed website and the arbitration system of the United Kingdom"
                                          "\nwill govern how the drama unfolds.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.23. Arbitration Process",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "A party who desires to initiate arbitration must provide the other party with a written Demand for"
                                          "\nArbitration as specified in the AAA Rules. (The AAA provides a general Demand for Arbitration form and a separate form for Demand for Arbitration"
                                          "\nfor California residents.) The arbitrator will be"
                                          "\neither a retired judge or an attorney licensed to practice law and will be selected by the"
                                          "\nparties from the AAA’s roster of arbitrators. If the parties are unable to agree upon an arbitrator"
                                          "\nwithin seven (7) days of delivery of the Demand for Arbitration, then the AAA will appoint the"
                                          "\narbitrator in accordance with the AAA Rules.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.24. Arbitration Location and Procedure",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Unless you and Hypnoseed otherwise agree, the arbitration will be conducted in the county where"
                                          "\nyou reside. If your claim does not exceed \$10,000\, then the arbitration will be conducted solely on"
                                          "\nthe basis of the documents that you and Hypnoseed submit to the arbitrator, unless you request"
                                          "\na hearing or the arbitrator determines that a hearing is necessary. If your claim exceeds \$10,000\, "
                                          "\nyour right to a hearing will be determined by the AAA Rules. Subject to the AAA Rules, the"
                                          "\narbitrator will have the discretion to direct a reasonable exchange of information by the parties, "
                                          "\nconsistent with the expedited nature of the arbitration.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.25. Arbitrator’s Decision",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "The arbitrator will render an award within the time frame specified in the AAA Rules. The"
                                          "\narbitrator’s decision will include the essential findings and conclusions upon which the arbitrator"
                                          "\nbased the award. Judgment on the arbitration award may be entered in any court having"
                                          "\njurisdiction thereof. The arbitrator’s award of damages must be consistent with the terms of the"
                                          "\n“Limitation of Liability” section above as to the types and amounts of damages for which a party"
                                          "\nmay be held liable. The arbitrator may award declaratory or injunctive relief only in favour of the"
                                          "\nclaimant and only to the extent necessary to provide relief warranted by the claimant’s individual"
                                          "\nclaim. If you prevail in arbitration you will be entitled to an award of attorneys’ fees and expenses, "
                                          "\nto the extent provided under applicable law. Hypnoseed will not seek, and hereby waives all rights"
                                          "\nit may have under applicable law to recover, attorneys’ fees and expenses if it prevails in arbitration.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.26. Fees",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Your responsibility to pay any AAA filing, administrative and arbitrator fees will be solely as set"
                                          "\nforth in the AAA Rules or UK rules. However, if your claim for damages does not exceed \$75,000\,"
                                          "\nHypnoseed will pay all such fees unless the arbitrator finds that either the substance of your"
                                          "\nclaim or the relief sought in your Demand for Arbitration was frivolous or was brought for an"
                                          "\nimproper purpose (as measured by the standards set forth in Federal Rule of Civil Procedure"
                                          "\n11(b)).",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.27. Changes",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: "Notwithstanding the provisions of the “Modification” section above, if Hypnoseed changes this"
                                                      "\n“Dispute Resolution” section after the date you first accepted these Terms (or accepted any"
                                                      "\nsubsequent changes to these Terms), you may reject any such change by sending us written"
                                                      "\nnotice (including by email to",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                  )
                                              ),
                                              TextSpan(
                                                  text: ' philip@hypnoseed.com',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      launch('https://hypnoseedfront.sitecare.org/#/home');
                                                    }
                                              ),
                                              TextSpan(
                                                  text: ") within 30 days of the date such change"
                                                      "\nbecame effective, as indicated in the “Last Updated” date above or in the date of Hypnoseed’s"
                                                      "\nemail to you notifying you of such change. By rejecting any change, you are agreeing that you"
                                                      "\nwill arbitrate any Dispute between you and Hypnoseed in accordance with the provisions of this"
                                                      "\n“Dispute Resolution” section as of the date you first accepted these Terms (or accepted any"
                                                      "\nsubsequent changes to these Terms).",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                  )
                                              )

                                            ]
                                        )),


                                    SizedBox(height: 20),
                                    Text(
                                      "2.28. General Terms",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "These Terms constitute the entire and exclusive understanding and agreement between"
                                          "\nHypnoseed and you regarding the Services, Products and Content, and these Terms superseed"
                                          "\nand replace any and all prior oral or written understandings or agreements between Hypnoseed"
                                          "\nand you regarding the Services, Products and Content. If any provision of these Terms is held"
                                          "\ninvalid or unenforceable (either by an arbitrator appointed pursuant to the terms of the"
                                          "\n“Arbitration” section above or by court of competent jurisdiction, but only if you timely opt out of"
                                          "\narbitration by sending us an Arbitration Opt-out Notice in accordance with the terms set forth"
                                          "\nabove), that provision will be enforced to the maximum extent permissible and the other"
                                          "\nprovisions of these Terms will remain in full force and effect. You may not assign or transfer these Terms, "
                                          "\nby operation of law or otherwise, without Calm’s prior written consent. Any attempt by you"
                                          "\nto assign or transfer these Terms, without such consent, will be null and of no effect. Hypnoseed"
                                          "\nmay freely assign or transfer these Terms without restriction. Subject to the foregoing, these"
                                          "\nTerms will bind and inure to the benefit of the parties, their successors and permitted assigns.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Any notices or other communications provided by Hypnoseed under these Terms, including those"
                                          "\nregarding modifications to these Terms, will be given: (i) by Hypnoseed via email; or (ii) by"
                                          "\nposting to the Services. For notices made by e-mail, the date of receipt will be deemed the date"
                                          "\non which such notice is transmitted. Hypnoseed’s failure to enforce any right or provision of these"
                                          "\nTerms will not be considered a waiver of such right or provision. The waiver of any such right or"
                                          "\nprovision will be effective only if in writing and signed by a duly authorized representative of"
                                          "\nHypnoseed. Except as expressly set forth in these Terms, the exercise by either party of any of its "
                                          "\nremedies under these Terms will be without prejudice to its other remedies under these Terms or"
                                          "\notherwise.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "2.29. Contact Information",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff121212),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(text: 'If you have any questions about these Terms or the Services or Products, please contact'
                                                  '\nHypnoseed at',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              ),
                                              TextSpan(
                                                  text: ' philip@hypnoseed.com',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      launch('https://hypnoseedfront.sitecare.org/#/home');
                                                    }),
                                            ]
                                        )),
                                  ],
                                ),
                                Container(
                                  width: 100,
                                  color: Colors.transparent,
                                ),
                              ],
                            ),


                      ):
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child:

                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  color: Colors.transparent,
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment:MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "1.General Site Information",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 36
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "1.1 CopyRight",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The Hypnoseed information and content was written and compiled by Philip C.J. Cooper of\nKarmakanic ltd, U.K. for the exclusive use of Hypnoseed. The information is protected by copyright\nand may not be reprinted without the written permission of Philip C.J.Cooper, Karmakanic ltd and\nHypnoseed.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "1.2. Personal information",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Hypnoseed does not share any personal information with third parties. We don't like it ourselves\nand we believe we treat people as we like to be treated. Your personal information on Hypnoseed\nis very personal and not for the use of others. Full stop. We use your data to improve your\nexperience, like remembering your preferences, choices and status on the Hypnoseed site.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Your phone number you store as data is used solely by you for use to receive audio and video\nfiles that you the user programs themselves. You can disallow us to send you occasional\nnotifications, such as a payment reminder and Trigger Happy upgrades.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "1.3. Disclaimer",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The Oracle and Mantra test and results are intended as a convenient tool to provide practical\ninformation on your psychic profile constitutional type. It is not intended to diagnose, treat, cure\nor prevent any disease. In addition, it should be noted that while this information should be\nconsidered highly useful it is not meant to replace the skilled constitutional analysis of a\nprofessionally trained Therapist.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Hypnoseed is based around the concept of suggestion. Everything in life could be said to be a\nsuggestion. You choose to either believe or disbelief it. Truth changes through history, todays\ntruth is tomorrow’s lie. For instance we used to believe the earth was the centre of the universe,\nthen that the earth was flat and now its round. We didn't believe in climate change but now it is\nrecognised as given by news outlets.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Hypnoseed is based on techniques already widely used and the experience gained from the\ntechnique. It is best to follow the technique and then decide if it works, than academically\ndiscussing it, than the other way round. Any claims you consider Hypnoseed to be making are\nconsidered by Hypnoseed to be a suggestion, not a truth. A tendency expressed or unexpressed.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The contents of this website, such as text, graphics, images and other material are intended for\ninformational and educational purposes only and not for the purpose of obtaining medical\nadvice. The contents of this website are not intended to substitute for professional medical\nadvice, diagnosis or treatment. Although we take efforts to keep the medical information on our\nwebsite updated, we cannot guarantee that the information on our website reflects the most up-\nto-date research.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The idea in times of medical need all disciplines of healing combine and compliment each other\nto offer the person the best possible route map to health and wellness.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2. Terms of Service",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 36
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Last updated 8th April 2019",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: "Welcome to karmakanic ltd. which provides our website located at",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                  )
                                              ),
                                              TextSpan(
                                                  text: ' www.hypnoseed.com',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      launch('https://hypnoseedfront.sitecare.org/#/home');
                                                    }),
                                              TextSpan(
                                                  text: "(the\n“Site”) and our self hypnosis, meditation and self-care services accessible via our Site and our\nmobile device application (“App”). To make these Terms easier to read, the Site, our services and\nApp are collectively called the “Services.” Please read these Terms of Service (the “Terms”)\ncarefully because they govern your use of our Services.",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.normal,
                                                      fontSize: 16
                                                  )
                                              )
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.1. Agreement to Terms",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "By using our Services, you agree to be bound by these Terms. If you don’t agree to be bound by\nthese Terms, do not use the Services.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.2. Privacy policy",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Please refer to our Privacy Policy for information on how we collect, use and disclose\ninformation from our users. You acknowledge and agree that your use of the Services is subject to our Privacy\nPolicy.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.3. Changes to Terms or Services",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "We may modify the Terms at any time, in our sole discretion. If we do so, we’ll let you know either"
                                            "\nby posting the modified Terms on the Site or through other communications. It’s important that"
                                            "\nyou review the Terms whenever we modify them because if you continue to use the Services after"
                                            "\nwe have posted modified Terms on the Site, you are indicating to us that you agree to be bound"
                                            "\nby the modified Terms. If you don’t agree to be bound by the modified Terms, then you may not"
                                            "\nuse the Services anymore. Because our Services are evolving over time we may change or"
                                            "\ndiscontinue all or any part of the Services, at any time and without notice, at our sole discretion.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.4. Arbitration Notice",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Unless you opt out of arbitration within 30 days of the date you first agree to these terms by"
                                            "\nfollowing the opt-out procedure specified in the “Arbitration” section below, and except for"
                                            "\ncertain types of disputes described in the “Arbitration“ section below, you agree that disputes"
                                            "\nbetween you and Hypnoseed will be resolved by binding, individual arbitration and you are"
                                            "\nwaiving your right to a trial by jury or to participate as a plaintiff or class member in any"
                                            "\npurported class action or representative proceeding.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.5. Who May Use the Services ?",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.5.1 Eligibility",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "You may use the Services only if you are 13 years or older and are not barred from using the\nServices under applicable law. To make a purchase via the Services (described in the Section\ntitled “Purchases” below), you must be 18 years or older and capable of forming a binding\ncontract., we cannot guarantee that the information on our website reflects the most up-\nto-date research.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.5.2 Registration and Your Information",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "If you want to use certain features of the Services you’ll have to create an account (“Account”)."
                                            "\nYou can do this via the App or the Site or through your account with certain third-party social"
                                            "\nnetworking services such as Facebook (each, an “SNS Account”)."
                                            "\nIf you choose the SNS Account option we’ll create your Account by extracting from your SNS Account certain personal"
                                            "\ninformation such as your name and email address and other personal information that your"
                                            "\nprivacy settings on the SNS Account permit us to access",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.5.3 Using the Services",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Via the Services, users can select from a variety of options to create customized relaxation and"
                                            "\nself-improvement sessions. You can also use the paid functionality of the Services to utilize the"
                                            "\nenhanced functionality of the Services or purchase items that are offered for sale through the"
                                            "\nServices (the “Products”), as described in further detail under the Section titled “Purchases” below."
                                            "\nYou understand and agree that the Services, Products and any other information you learn from"
                                            "\nHypnoseed are not intended, designed, or implied to diagnose, prevent, or treat any condition or"
                                            "\ndisease, to ascertain the state of your health, or to be a substitute for professional medical care."
                                            "\nNot all activities described on the Services or Products are suitable for everyone. Do not use"
                                            "\nthe Services while driving, operating heavy machinery, or performing other tasks that require"
                                            "\nattention and concentration. You understand and agree that you are solely responsible for your"
                                            "\nuse of the Services.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.6. Purchases",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.6.1 Fees",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Calm offers certain enhanced features of the Services which you can purchase as a monthly,"
                                            "\nyearly or lifetime subscription (“Subscription”). A description of features associated with"
                                            "\nSubscriptions is available via the Services. When you purchase a Subscription or a Product (each, "
                                            "\na “Transaction”), we may ask you to supply additional information relevant to your Transaction, "
                                            "\nsuch as your credit card number, the expiration date of your credit card and your address(es) for"
                                            "\nbilling and delivery (such information, “Payment Information”). You represent and warrant"
                                            "\nthat you have the legal right to use all payment method(s) represented by any such Payment"
                                            "\nInformation. The amounts due and payable by you for a Transaction through the Services will be"
                                            "\npresented to you before you place your order. If you choose to initiate a Transaction via the"
                                            "\nServices, you authorize us to provide your Payment Information to third party service providers so"
                                            "\nwe can complete your Transaction and agree (a) to pay the applicable fees and any taxes; (b)"
                                            "\nthat Hypnoseed may charge your credit card or third party payment processing account,"
                                            "\nincluding, but not limited to, your account with the app store or distribution platform (like the"
                                            "\nApple App Store, Google Play or the Amazon Appstore) where the App is made available (each,"
                                            "\nan “App Provider”), for verification, pre-authorization and payment purposes; and (c) to bear any"
                                            "\nadditional charges that your App Provider, bank or other financial service provider may levy on"
                                            "\nyou as well as any taxes or fees that may apply to your order. You’ll receive a confirmation email"
                                            "\nafter we confirm the payment for your order. Your order is not binding on Hypnoseed until"
                                            "\naccepted and confirmed by Hypnoseed. All payments made are non-refundable and non-"
                                            "\ntransferable except as expressly provided in these Terms.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "If you have any concerns or objections regarding charges, you agree to raise them with us first"
                                            "\nand you agree not to cancel or reject any credit card or third party payment processing charges"
                                            "\nunless you have made a reasonable attempt at resolving the matter directly with Hypnoseed."
                                            "\nHypnoseed reserves the right to not process or to cancel your order in certain circumstances, "
                                            "\nfor example, if your credit card is declined, if we suspect the request or order is fraudulent, or in other"
                                            "\ncircumstances Hypnoseed deems appropriate in its sole discretion. Hypnoseed also reserves the"
                                            "\nright, in its sole discretion, to take steps to verify your identity in connection with your order. You"
                                            "\nmay need to provide additional information to verify your identity before completing your"
                                            "\nTransaction (such information is included within the definition of Payment Information)."
                                            "\nHypnoseed will either not charge you or refund the charges for orders that we do not process or cancel.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.6.2 Title, Risk of Loss",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The risk of loss and title for Products purchased by you pass from Hypnoseed to you on shipment"
                                            "\nfrom Hypnoseed’s facility. All shipments are governed in accordance to Hypnoseed standard"
                                            "\nShipping Terms.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.6.3 Return Policy",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "If for any reason, you are not satisfied with the Product you have purchased and you want to\n"
                                            "return the Product, please refer to our Return Policy for information on how you may return eligible"
                                            "\nProducts.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "All amounts are payable and charged: for one-off purchase at the time you place your order."
                                            "\nPayment is for only one person at a time, and is limited to an amount of pre agreed call backs"
                                            "\nagreed at time of purchase",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.6.4 Changes to Price Terms for Subscriptions",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Hypnoseed reserves the right to change its pricing terms for Subscriptions to manuals at any"
                                            "\ntime and Hypnoseed will notify you in advance of such changes becoming effective.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.6.5 Future Functionality",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "You agree that your purchases are not contingent on the delivery of any future functionality or"
                                            "\nfeatures, or dependent on any oral or written public comments made by Hypnoseed regarding"
                                            "\nfuture functionality or features.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.7. Feedback",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: "We welcome feedback, comments and suggestions for improvements to the Services or Products"
                                                      "\n(“Feedback”). You can submit Feedback by emailing us at ​",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                  )
                                              ),
                                              TextSpan(
                                                  text: ' philip@hypnoseed.com.',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      launch('https://hypnoseedfront.sitecare.org/#/home');
                                                    }),
                                              TextSpan(
                                                  text: "​ . writing the"
                                                      "\nsubject matter as \“feedback\"You grant to us a non-exclusive, worldwide, perpetual, irrevocable,"
                                                      "\nfully-paid, royalty-free, sublicensable and transferable license under any and all intellectual"
                                                      "\nproperty rights that you own or control to use, copy, modify, create derivative works based upon"
                                                      "\nand otherwise exploit the Feedback for any purpose.",
                                                  style:GoogleFonts.poppins(
                                                      fontWeight: FontWeight.normal,
                                                      fontSize: 16
                                                  )
                                              )
                                            ]
                                        ),
                                      ),

                                      SizedBox(height: 20),
                                      Text(
                                        "2.8. Content and Content Rights",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "For purposes of these Terms, (i) “Content” means text, graphics, images, music, software, audio,"
                                            "\nvideo, works of authorship of any kind, and information or other materials that are posted, "
                                            "\ngenerated, provided or otherwise made available through the Services; and (ii) “User Content”"
                                            "\nmeans any Content that users (including you) provide to be made available through the"
                                            "\nServices. Content includes without limitation User Content.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.9. Content Ownership",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Hypnoseed does not claim any ownership rights in any User Content and nothing in these Terms"
                                            "\nwill be deemed to restrict any rights that you may have to use and exploit your User Content."
                                            "\nSubject to the foregoing, Hypnoseed and its licensors exclusively own all right, title and interest in"
                                            "\nand to the Services and Content, including all associated intellectual property rights. You"
                                            "\nacknowledge that the Services and Content are protected by copyright, trademark, and other"
                                            "\nlaws of the United States, United Kingdom and foreign countries. You agree not to remove, alter or"
                                            "\nobscure any copyright, trademark, service mark or other proprietary rights notices incorporated"
                                            "\nin or accompanying the Services or Content.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.10. Rights in User Content Granted by You",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "By making any User Content available through Services you hereby grant to Hypnoseed a non-"
                                            "\nexclusive, transferable, sublicenseable, worldwide, royalty-free license to use, copy, modify, "
                                            "\ncreate derivative works based upon, distribute, publicly display, publicly perform and distribute"
                                            "\nyour User Content in connection with operating and providing the Services and Content to you"
                                            "\nand to other users.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.11. Rights in Content Granted by Hypnoseed",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Subject to your compliance with these Terms, Calm grants you a limited, non-exclusive,"
                                            "\nnon-transferable, non-sublicenseable license to download, view, copy and display the Content solely"
                                            "\nin connection with your permitted use of the Services and solely for your personal and non-"
                                            "\ncommercial purposes.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.12. Rights and Terms for Apps",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "2.12.1. Rights in WebApp and Native App Granted by Hypnoseed",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Subject to your compliance with these Terms, Hypnoseed grants you a limited non-exclusive,"
                                            "\nnon-transferable, non-sublicenseable license to download and install a copy of the App on a"
                                            "\nmobile device or computer that you own or control and to run such copy of the App solely for"
                                            "\nyour own personal non-commercial purposes. Hypnoseed reserves all rights in and to the App"
                                            "\nnot expressly granted to you under these Terms. You may not copy the App, except for making a"
                                            "\nreasonable number of copies for backup or archival purposes. Except as expressly permitted in"
                                            "\nthese Terms, you may not: (i) copy, modify or create derivative works based on the App; (ii)"
                                            "\ndistribute, transfer, sublicense, lease, lend or rent the App to any third party; (iii) reverse engineer, "
                                            "\ndecompile or disassemble the App; or (iv) make the functionality of the App available to multiple"
                                            "\nusers through any means.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.13. Additional Terms for App store Apps",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "If you accessed or downloaded the App from the Apple Store, then you agree to use the App only:"
                                            "\n(i) on an Apple-branded product or device that runs iOS (Apple’s proprietary operating system"
                                            "\nsoftware); and (ii) as permitted by the “Usage Rules” set forth in the Apple Store Terms of Service.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "If you accessed or downloaded the App from an App Provider, then you acknowledge and agree"
                                            "\nthat: These Terms are concluded between you and Hypnoseed, and not with App Provider, and"
                                            "\nthat, as between Hypnoseed and the App Provider, Hypnoseed is solely responsible for the App.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "App Provider has no obligation to furnish any maintenance and support services with respect to"
                                            "\nthe App. In the event of any failure of the App to conform to any applicable warranty, you may"
                                            "\nnotify App Provider and App Provider will refund the purchase price for the App to you (if"
                                            "\napplicable) and, to the maximum extent permitted by applicable law, App Provider will have no"
                                            "\nother warranty obligation whatsoever with respect to the App. Any other claims, losses, liabilities, "
                                            "\ndamages, costs or expenses attributable to any failure of an App to conform to any warranty will"
                                            "\nbe the sole responsibility of Hypnoseed.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ), SizedBox(height: 10),
                                      Text(
                                        "App Provider has no obligation to furnish any maintenance and support services with respect to"
                                            "\nthe App. In the event of any failure of the App to conform to any applicable warranty, you may"
                                            "\nnotify App Provider and App Provider will refund the purchase price for the App to you (if"
                                            "\napplicable) and, to the maximum extent permitted by applicable law, App Provider will have no"
                                            "\nother warranty obligation whatsoever with respect to the App. Any other claims, losses, liabilities, "
                                            "\ndamages, costs or expenses attributable to any failure of an App to conform to any warranty will"
                                            "\nbe the sole responsibility of Hypnoseed.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "App Provider is not responsible for addressing any claims you have or any claims of any third party"
                                            "\nrelating to the App or your possession and use of the App, including, but not limited to: (i)"
                                            "\nproduct liability claims; (ii) any claim that the App fails to conform to any applicable legal or"
                                            "\nregulatory requirement; and (iii) claims arising under consumer protection or similar legislation.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "In the event of any third-party claim that the App or your possession and use of the App infringes"
                                            "\nthat third party’s intellectual property rights, Hypnoseed will be solely responsible for the"
                                            "\ninvestigation, defence, settlement and discharge of any such intellectual property infringement"
                                            "\nclaim to the extent required by these Terms.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "App Provider and its subsidiaries are third-party beneficiaries of these Terms as related to your"
                                            "\nlicense of the App, and that, upon your acceptance of the terms and conditions of these Terms, "
                                            "\nApp Provider will have the right (and will be deemed to have accepted the right) to enforce these"
                                            "\nTerms as related to your license of the App against you as a third party beneficiary thereof.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "You must also comply with all applicable third-party terms of service when using the App. You"
                                            "\nagree to comply with all U.S. and foreign export laws and regulations to ensure that neither the"
                                            "\nApp nor any technical data related thereto nor any direct product thereof is exported or re-"
                                            "\nexported directly or indirectly in violation of, or used for any purposes prohibited by, such laws"
                                            "\nand regulations. By using the App you represent and warrant that: (i) you are not located in a"
                                            "\ncountry that is subject to a U.S. Government embargo, or that has been designated by the U.S."
                                            "\nGovernment as a “terrorist supporting” country; and (ii) you are not listed on any U.S. Government"
                                            "\nlist of prohibited or restricted parties.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.14. Prohibitions",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "You agree not to do any of the following:",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),


                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text:"Post, upload, publish, submit or transmit any Content that: (i) infringes, misappropriates or"
                                                    "\nviolates a third party’s patent, copyright, trademark, trade secret, moral rights or other"
                                                    "\nintellectual property rights, or rights of publicity or privacy; (ii) violates, or encourages any"
                                                    "\nconduct that would violate, any applicable law or regulation or would give rise to civil liability;"
                                                    "\n(iii) is fraudulent, false, misleading or deceptive; (iv) is defamatory, obscene, pornographic, "
                                                    "\nvulgar or offensive; (v) promotes discrimination, bigotry, racism, hatred, harassment or harm"
                                                    "\nagainst any individual or group; (vi) is violent or threatening or promotes violence or actions"
                                                    "\nthat are threatening to any person or entity; or (vii) promotes illegal or harmful activities or substances;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Use, display, mirror or frame the Services, or any individual element within the Services,"
                                                    "\nHypnoseed’s name, any Hypnoseed trademark, logo or other proprietary information, or the"
                                                    "\nlayout and design of any page or form contained on a page, without Hypnoseed’s express"
                                                    "\nwritten consent; Access, tamper with, or use non-public areas of the Services, Hypnoseed’s"
                                                    "\ncomputer systems, or the technical delivery systems of Hypnoseed’s providers; Attempt to"
                                                    "\nprobe, scan, or test the vulnerability of any Hypnoseed system or network or breach any"
                                                    "\nsecurity or authentication measures;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Avoid, bypass, remove, deactivate, impair, descramble or otherwise circumvent any"
                                                    "\ntechnological measure implemented by Hypnoseed or any of Hypnoseed’s providers or any"
                                                    "\nother third party (including another user) to protect the Services;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Attempt to access or search the Services or download Collective Content from the Services"
                                                    "\nthrough the use of any engine, software, tool, agent, device or mechanism (including spiders,"
                                                    "\nrobots, crawlers, data mining tools or the like) other than the software and/or search agents"
                                                    "\nprovided by Hypnoseed or other generally available third party web browsers;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Send any unsolicited or unauthorized advertising, promotional materials, email, junk mail,"
                                                    "\nspam, chain letters or other form of solicitation;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Use any meta tags or other hidden text or metadata utilizing a Hypnoseed trademark, logo URL"
                                                    "\nor product name without Hypnoseed’s express written consent;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Use the Services for any commercial purpose or the benefit of any third party or in any manner"
                                                    "\nnot permitted by these Terms;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Forge any TCP/IP packet header or any part of the header information in any email or"
                                                    "\nnewsgroup posting, or in any way use the Services to send altered, deceptive or false source-"
                                                    "\nidentifying information; Attempt to decipher, decompile, disassemble or reverse engineer any"
                                                    "\nof the software used to provide the Services;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Interfere with, or attempt to interfere with, the access of any user, host or network, including,"
                                                    "\nwithout limitation, sending a virus, overloading, flooding, spamming, or mail-bombing the"
                                                    "\nServices; Collect or store any personally identifiable information from the Services from other"
                                                    "\nusers of the Services without their express permission;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Impersonate or misrepresent your affiliation with any person or entity;",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Violate any applicable law or regulation; or Encourage or enable any other individual"
                                                    "\nto do any of the foregoing.",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  "• ",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              TextSpan(
                                                text:  "Although we’re not obligated to monitor access to or use of the Services or Content or to"
                                                    "\nreview or edit any Content, we have the right to do so for the purpose of operating the"
                                                    "\nServices, to ensure compliance with these Terms, and to comply with applicable law or other"
                                                    "\nlegal requirements. We reserve the right, but are not obligated, to remove or disable access to"
                                                    "\nany Content, at any time and without notice, including, but not limited to, if we, at our sole"
                                                    "\ndiscretion, consider any Content to be objectionable or in violation of these Terms. We have"
                                                    "\nthe right to investigate violations of these Terms or conduct that affects the Services. We may"
                                                    "\nalso consult and cooperate with law enforcement authorities to prosecute users who violate"
                                                    "\nthe law.",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              )
                                            ]

                                        ),
                                      ),

                                      SizedBox(height: 20),
                                      Text(
                                        "2.15. Links to Third Party Websites or Resources",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The Services and App may contain links to third-party websites or resources. We provide these"
                                            "\nlinks only as a convenience and are not responsible for the content, products or services on or"
                                            "\navailable from those websites or resources or links displayed on such websites. You acknowledge"
                                            "\nsole responsibility for and assume all risk arising from, your use of any third-party websites"
                                            "\nor resources.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.16. Termination",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                          text: TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: "We may terminate your access to and use of the Services, at our sole discretion, at any time and"
                                                        "\nwithout notice to you. You may cancel your Account at any time by sending an email to us at \n",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.normal
                                                    )
                                                ),
                                                TextSpan(
                                                    text: ' philip@hypnoseed.com.',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.normal,
                                                        color: Colors.blue
                                                    ),
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () {
                                                        launch('https://hypnoseedfront.sitecare.org/#/home');
                                                      }),
                                                TextSpan(
                                                    text: "If you purchase Subscription via an App Provider, you should also cancel"
                                                        "\nyour Subscription with the App Provider directly. Upon any termination, discontinuation or"
                                                        "\ncancellation of Services or your Account, all provisions of these Terms which by their nature"
                                                        "\nshould survive will survive, including, without limitation, ownership provisions, warranty"
                                                        "\ndisclaimers, limitations of liability, and dispute resolution provisions.",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 16
                                                    )
                                                )
                                              ]
                                          )
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.17. Warranty Disclaimers",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The Services, Products and Content are provided “as is,” without warranty of any kind. Without"
                                            "\nlimiting the foregoing, we explicitly disclaim any warranties of merchantability, fitness for a"
                                            "\nparticular purpose, quiet enjoyment or non-infringement and any warranties arising out of"
                                            "\ncourse of dealing or usage of trade.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "We make no warranty that the Services or Products will meet your requirements or be available"
                                            "\non an uninterrupted, secure, or error-free basis. We make no warranty regarding the quality, "
                                            "\naccuracy, timeliness, truthfulness, completeness or reliability of any Content.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),

                                      SizedBox(height: 20),
                                      Text(
                                        "2.18. Indemnity",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "You will indemnify and hold harmless Hypnoseed and its officers, directors, employee and agents,"
                                            "\nfrom and against any claims, disputes, demands, liabilities, damages, losses, and costs and"
                                            "\nexpenses, including, without limitation, reasonable legal and accounting fees, arising out of or in"
                                            "\nany way connected with (i) your access to or use of the Services or Content or (ii) your violation"
                                            "\nof these Terms.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),SizedBox(height: 20),
                                      Text(
                                        "2.19. Limitation of Liability",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Neither Hypnoseed nor any other party involved in creating, producing, or delivering the Services,"
                                            "\nProducts or Content will be liable for any incidental, special, exemplary or consequential"
                                            "\ndamages, including, but not limited to, lost profits, loss of data or goodwill, service interruption, "
                                            "\ncomputer damage or system failure or the cost of substitute Services or Products arising out of or"
                                            "\nin connection with these terms or from the use of or inability to use the Services, Products or"
                                            "\nContent, whether based on warranty, contract, tort (including negligence), product liability or any"
                                            "\nother legal theory, and whether or not Hypnoseed has been informed of the possibility of such"
                                            "\ndamage, even if a limited remedy set forth herein is found to have failed of its essential purpose."
                                            "\nSome jurisdictions do not allow the exclusion or limitation of liability for consequential or"
                                            "\nincidental damages, so the above limitation may not apply to you.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "In no event will Hypnoseed’s total liability arising out of or in connection with these terms or from"
                                            "\nthe use of or inability to use the Services, Products or Content exceed the amounts you have paid"
                                            "\nto Hypnoseed for use of the Services, Products or Content or fifty dollars (\$50\), if you have not had"
                                            "\nany payment obligations to Hypnoseed, as applicable. The exclusion and limitations of damages"
                                            "\nset forth above are fundamental elements of the basis of the bargain between Calm and you.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.20. Governing Law",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "These Terms and any action related thereto will be governed by the laws of the state of California"
                                            "\nand laws of the United Kingdom without regard to its conflict of laws provisions.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.21. Agreement to Arbitrate",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                          text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:  "You and Hypnoseed agree that any dispute, claim or controversy arising out of or relating to"
                                                      "\nthese Terms or the breach, termination, enforcement, interpretation or validity thereof or the use"
                                                      "\nof the Services, Products or Content (collectively, “Disputes”) will be settled by binding arbitration, "
                                                      "\nexcept that each party retains the right: (i) to bring an individual action in small claims court and"
                                                      "\n(ii) to seek injunctive or other equitable relief in a court of competent jurisdiction to prevent the"
                                                      "\nactual or threatened infringement, misappropriation or violation of a party’s copyrights, "
                                                      "\ntrademarks, trade secrets, patents or other intellectual property rights (the action described in"
                                                      "\nthe foregoing clause (ii), an “IP Protection Action”). Without limiting the preceding sentence, you"
                                                      "\nwill also have the right to litigate any other Dispute if you provide Hypnoseed with written notice"
                                                      "\nof your desire to do so by email at",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: ' philip@hypnoseed.com',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.normal,
                                                        color: Colors.blue
                                                    ),
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () {
                                                        launch('https://hypnoseedfront.sitecare.org/#/home');
                                                      }),
                                                TextSpan(
                                                    text: "within thirty (30) days following the"
                                                        "\ndate you first agree to these Terms (such notice, an “Arbitration Opt-out Notice”). If you don’t"
                                                        "\nprovide Hypnoseed with an Arbitration Opt-out Notice within the thirty (30) day period, you will be"
                                                        "\ndeemed to have knowingly and intentionally waived your right to litigate any Dispute except as"
                                                        "\nexpressly set forth in clauses (i) and (ii) above. The exclusive jurisdiction and venue of any IP"
                                                        "\nProtection Action or, if you timely provide Hypnoseed with an Arbitration Opt-out Notice, and each"
                                                        "\nof the parties hereto waives any objection to jurisdiction and venue in such courts. Unless you"
                                                        "\ntimely provide Hypnoseed with an Arbitration Opt-out Notice, you acknowledge and agree that"
                                                        "\nyou and Hypnoseed are each waiving the right to a trial by jury or to participate as a plaintiff or"
                                                        "\nclass member in any purported class action or representative proceeding. Further, unless both"
                                                        "\nyou and Hypnoseed otherwise agree in writing, the arbitrator may not consolidate more than one"
                                                        "\nperson’s claims, and may not otherwise preside over any form of any class or representative"
                                                        "\nproceeding. If this specific paragraph is held unenforceable, then the entirety of this “Dispute"
                                                        "\nResolution” section will be deemed void. Except as provided in the preceding sentence, this"
                                                        "\n“Dispute Resolution” section will survive any termination of these Terms.",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 16
                                                    )

                                                )
                                              ]
                                          )
                                      ),

                                      SizedBox(height: 20),
                                      Text(
                                        "2.22. Arbitration Rules",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text:"The arbitration will be administered by the American Arbitration Association (“AAA”) in"
                                                      "\naccordance with the Commercial Arbitration Rules and the Supplementary Procedures for"
                                                      "\nConsumer Related Disputes (the “AAA Rules”) then in effect, except as modified by this “Dispute"
                                                      "\nResolution” section. (The AAA Rules are available at",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                  )
                                              ),
                                              TextSpan(
                                                  text: ' www.adr.org/arb_med',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      launch('https://hypnoseedfront.sitecare.org/#/home');
                                                    }),
                                              TextSpan(
                                                  text: "or by calling the AAA"
                                                      "\nat 1-800-778-7879.) The Federal Arbitration Act will govern the interpretation and enforcement of"
                                                      "\nthis Section.",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.normal,
                                                      fontSize: 16
                                                  )
                                              )
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Though at going live this is underdecided as yet and until further notice all laws of the United"
                                            "\nKingdom will govern this Hypnoseed website and the arbitration system of the United Kingdom"
                                            "\nwill govern how the drama unfolds.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.23. Arbitration Process",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "A party who desires to initiate arbitration must provide the other party with a written Demand for"
                                            "\nArbitration as specified in the AAA Rules. (The AAA provides a general Demand for Arbitration form and a separate form for Demand for Arbitration"
                                            "\nfor California residents.) The arbitrator will be"
                                            "\neither a retired judge or an attorney licensed to practice law and will be selected by the"
                                            "\nparties from the AAA’s roster of arbitrators. If the parties are unable to agree upon an arbitrator"
                                            "\nwithin seven (7) days of delivery of the Demand for Arbitration, then the AAA will appoint the"
                                            "\narbitrator in accordance with the AAA Rules.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.24. Arbitration Location and Procedure",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Unless you and Hypnoseed otherwise agree, the arbitration will be conducted in the county where"
                                            "\nyou reside. If your claim does not exceed \$10,000\, then the arbitration will be conducted solely on"
                                            "\nthe basis of the documents that you and Hypnoseed submit to the arbitrator, unless you request"
                                            "\na hearing or the arbitrator determines that a hearing is necessary. If your claim exceeds \$10,000\, "
                                            "\nyour right to a hearing will be determined by the AAA Rules. Subject to the AAA Rules, the"
                                            "\narbitrator will have the discretion to direct a reasonable exchange of information by the parties, "
                                            "\nconsistent with the expedited nature of the arbitration.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.25. Arbitrator’s Decision",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "The arbitrator will render an award within the time frame specified in the AAA Rules. The"
                                            "\narbitrator’s decision will include the essential findings and conclusions upon which the arbitrator"
                                            "\nbased the award. Judgment on the arbitration award may be entered in any court having"
                                            "\njurisdiction thereof. The arbitrator’s award of damages must be consistent with the terms of the"
                                            "\n“Limitation of Liability” section above as to the types and amounts of damages for which a party"
                                            "\nmay be held liable. The arbitrator may award declaratory or injunctive relief only in favour of the"
                                            "\nclaimant and only to the extent necessary to provide relief warranted by the claimant’s individual"
                                            "\nclaim. If you prevail in arbitration you will be entitled to an award of attorneys’ fees and expenses, "
                                            "\nto the extent provided under applicable law. Hypnoseed will not seek, and hereby waives all rights"
                                            "\nit may have under applicable law to recover, attorneys’ fees and expenses if it prevails in arbitration.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.26. Fees",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Your responsibility to pay any AAA filing, administrative and arbitrator fees will be solely as set"
                                            "\nforth in the AAA Rules or UK rules. However, if your claim for damages does not exceed \$75,000\,"
                                            "\nHypnoseed will pay all such fees unless the arbitrator finds that either the substance of your"
                                            "\nclaim or the relief sought in your Demand for Arbitration was frivolous or was brought for an"
                                            "\nimproper purpose (as measured by the standards set forth in Federal Rule of Civil Procedure"
                                            "\n11(b)).",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.27. Changes",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                          text: TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: "Notwithstanding the provisions of the “Modification” section above, if Hypnoseed changes this"
                                                        "\n“Dispute Resolution” section after the date you first accepted these Terms (or accepted any"
                                                        "\nsubsequent changes to these Terms), you may reject any such change by sending us written"
                                                        "\nnotice (including by email to",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.normal
                                                    )
                                                ),
                                                TextSpan(
                                                    text: ' philip@hypnoseed.com',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.normal,
                                                        color: Colors.blue
                                                    ),
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () {
                                                        launch('https://hypnoseedfront.sitecare.org/#/home');
                                                      }
                                                ),
                                                TextSpan(
                                                    text: ") within 30 days of the date such change"
                                                        "\nbecame effective, as indicated in the “Last Updated” date above or in the date of Hypnoseed’s"
                                                        "\nemail to you notifying you of such change. By rejecting any change, you are agreeing that you"
                                                        "\nwill arbitrate any Dispute between you and Hypnoseed in accordance with the provisions of this"
                                                        "\n“Dispute Resolution” section as of the date you first accepted these Terms (or accepted any"
                                                        "\nsubsequent changes to these Terms).",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.normal
                                                    )
                                                )

                                              ]
                                          )),


                                      SizedBox(height: 20),
                                      Text(
                                        "2.28. General Terms",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "These Terms constitute the entire and exclusive understanding and agreement between"
                                            "\nHypnoseed and you regarding the Services, Products and Content, and these Terms superseed"
                                            "\nand replace any and all prior oral or written understandings or agreements between Hypnoseed"
                                            "\nand you regarding the Services, Products and Content. If any provision of these Terms is held"
                                            "\ninvalid or unenforceable (either by an arbitrator appointed pursuant to the terms of the"
                                            "\n“Arbitration” section above or by court of competent jurisdiction, but only if you timely opt out of"
                                            "\narbitration by sending us an Arbitration Opt-out Notice in accordance with the terms set forth"
                                            "\nabove), that provision will be enforced to the maximum extent permissible and the other"
                                            "\nprovisions of these Terms will remain in full force and effect. You may not assign or transfer these Terms, "
                                            "\nby operation of law or otherwise, without Calm’s prior written consent. Any attempt by you"
                                            "\nto assign or transfer these Terms, without such consent, will be null and of no effect. Hypnoseed"
                                            "\nmay freely assign or transfer these Terms without restriction. Subject to the foregoing, these"
                                            "\nTerms will bind and inure to the benefit of the parties, their successors and permitted assigns.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Any notices or other communications provided by Hypnoseed under these Terms, including those"
                                            "\nregarding modifications to these Terms, will be given: (i) by Hypnoseed via email; or (ii) by"
                                            "\nposting to the Services. For notices made by e-mail, the date of receipt will be deemed the date"
                                            "\non which such notice is transmitted. Hypnoseed’s failure to enforce any right or provision of these"
                                            "\nTerms will not be considered a waiver of such right or provision. The waiver of any such right or"
                                            "\nprovision will be effective only if in writing and signed by a duly authorized representative of"
                                            "\nHypnoseed. Except as expressly set forth in these Terms, the exercise by either party of any of its "
                                            "\nremedies under these Terms will be without prejudice to its other remedies under these Terms or"
                                            "\notherwise.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "2.29. Contact Information",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff121212),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                          text: TextSpan(
                                              children: [
                                                TextSpan(text: 'If you have any questions about these Terms or the Services or Products, please contact'
                                                    '\nHypnoseed at',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: ' philip@hypnoseed.com',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.normal,
                                                        color: Colors.blue
                                                    ),
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () {
                                                        launch('https://hypnoseedfront.sitecare.org/#/home');
                                                      }),
                                              ]
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  color: Colors.transparent,
                                ),
                              ],
                            ),

                      ),
                    ),
                    FooterPage()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
