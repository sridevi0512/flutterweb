import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../responsiveWidget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController _emailcontroller = new TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: Color(0xff4f76f6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/loginlogo.png",
                      height: 200,
                      width: 200,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Forgot your Password",
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.topCenter,
                padding: new EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .30,
                    right: 20.0,
                    left: 20.0),
                child: Container(
                  width: (ResponsiveWidget.isSmallScreen(context))? MediaQuery.of(context).size.width:
                  (ResponsiveWidget.isMediumScreen(context))? MediaQuery.of(context).size.width/2:
                       MediaQuery.of(context).size.width/3,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      elevation: 4,
                      shadowColor: Colors.grey,
                      child: Form(
                        key: _key,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Enter your Email Address",
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
                              child: Text(
                                "You will receive an email the with password \n"
                                    "reset link",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                  fontStyle: FontStyle.normal
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Email Address",
                                style: GoogleFonts.poppins(
                                    fontSize: 16
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller: _emailcontroller,
                                autocorrect: false,
                                enableSuggestions: false,
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'Fill in your Email address';
                                  }
                                  else return null;
                                },
                                onChanged: (value) {
                                  setState(() {

                                  });
                                },
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Color(0xff8898aa)),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    hintText: "Email Address",
                                    hintStyle: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xff8898aa)
                                    )
                                ),

                              ),
                            ),


                            SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff5e72e4),
                                    minimumSize: Size.fromHeight(50)
                                ),
                                onPressed: (){
                                  if(_key.currentState!.validate()){
                                    print("Validation");
                                  }
                                },
                                child: Text(
                                  "Reset Password",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),
                                ),
                              ),
                            ),

                      ],
                        ),
                      ),
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
