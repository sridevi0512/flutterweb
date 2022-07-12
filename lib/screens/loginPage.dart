import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutterweb/screens/homePage.dart';
import 'package:flutterweb/screens/signupPage.dart';
import 'package:flutterweb/utils/apiUrl.dart';
import 'package:flutterweb/utils/constant.dart';
import 'package:flutterweb/utils/preference.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../responsiveWidget.dart';
import 'forgotPassPage.dart';
import 'package:http/http.dart' as http;


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailEditingController = new TextEditingController();
  TextEditingController _passwordEditingController = new TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool _passVisible = false;
  var id,first_name,last_name,email,phone_number,userToken;

  Future<String?> loginUser() async{
    print(ApiUrl.BASE_URL + ApiUrl.LOGIN);

    var body = json.encode({
        "email": _emailEditingController.text,
        "password": _passwordEditingController.text
    });


    final response = await http.post(Uri.parse(ApiUrl.BASE_URL + ApiUrl.LOGIN),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },

        body: body
    );

    try{
      var data = jsonDecode(response.body);
      print(data);
      if(data['status'] == "true"){
        Fluttertoast.showToast(
            msg: data['message'],
        toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM
        );
        userToken = data['user_token'];
        id = data['details']['id'].toString();
        first_name = data['details']['first_name'];
        last_name = data['details']['last_name'];
        email = data['details']['email'];
        phone_number = data['details']['phone_number'].toString();

        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setString("user_id", id);
        Preference.setUserId(Constants.USER_ID, id);
        Preference.setUserToken(userToken, userToken);
        Get.toNamed("/home");
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => HomePage()));
      } else{
        Fluttertoast.showToast(
            msg: data['message'],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM
        );
      }
    }catch(Exception){
       print(Exception);
      Fluttertoast.showToast(
          msg: 'The server is temporary unable to complete the request',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM);
    }

  }
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
                        "Log in",
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
                                "Email Address",
                                style: GoogleFonts.poppins(
                                    fontSize: 16
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller: _emailEditingController,
                                autocorrect: false,
                                enableSuggestions: false,
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'Email is required';
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

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Password",
                                style: GoogleFonts.poppins(
                                    fontSize: 16
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller: _passwordEditingController,
                                autocorrect: false,
                                obscureText: _passVisible? false: true,
                                enableSuggestions: false,
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'Password is required';
                                  }
                                  else return null;
                                },
                                onChanged: (value) {
                                  setState(() {

                                  });
                                },
                                decoration: InputDecoration(
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _passVisible = !_passVisible;
                                        });
                                      },
                                      child: Container(
                                        child: Icon(
                                          _passVisible?
                                          Icons.visibility_rounded:
                                          Icons.visibility_off_sharp,
                                          size: 18,
                                          color: Color(0xff8898aa),
                                        ),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Color(0xff8898aa)),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    hintText: "Password",
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
                                    loginUser();
                                  }
                                },
                                child: Text(
                                  "Log in",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                onPressed: (){
                                  Navigator.of(context).
                                  push(MaterialPageRoute(builder: (BuildContext) => ForgotPasswordPage()));
                                },
                                child: Text(
                                  "Forgot your password?",
                                  style: GoogleFonts.poppins(
                                    color: Color(0xff5e72e4)
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                  children:[
                                    Text(
                                      "Don't have an account yet?",
                                      style: GoogleFonts.poppins(
                                          fontSize: 11
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: (){
                                        Navigator.of(context).
                                        push(MaterialPageRoute(builder: (BuildContext) => SignUpPage()));
                                      },
                                      child: Text(
                                          "Sign up here",
                                          style: GoogleFonts.poppins(
                                              fontSize: 11,
                                              color: Color(0xff5e72e4)
                                          )
                                      ),
                                    )
                                  ]
                              ),
                            )
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
