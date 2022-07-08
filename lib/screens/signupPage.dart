import 'dart:convert';

import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/screens/loginPage.dart';
import 'package:flutterweb/utils/apiUrl.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _firstnameEditingController = new TextEditingController();
  TextEditingController _lastnameEditingController = new TextEditingController();
  TextEditingController _phonenumberEditingController = new TextEditingController();
  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController _passwordEditingController = new TextEditingController();
  TextEditingController _rptPasswordEditingController = new TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool _isVisible =false;
  bool rptVisible = false;
  String countryCode = "";

  Future<String?> register() async {
    print(ApiUrl.BASE_URL + ApiUrl.REGISTER);

    final response = await http.post(Uri.parse(ApiUrl.BASE_URL + ApiUrl.REGISTER),
        headers: <String,String>{
          'Content-Type' : 'application/json',
        },
        body: jsonEncode({
          'first_name': _firstnameEditingController.text,
          'last_name' : _lastnameEditingController.text,
          'country_code': countryCode,
          'phone_number' : _phonenumberEditingController.text,
          'email' : emailEditingController.text,
          'password' : _passwordEditingController.text
        })
    );

    try{
      var data = jsonDecode(response.body);
      print(data);
      if(data['status'] == "true"){
        Fluttertoast.showToast(
            msg: data['message'],
            toastLength: Toast.LENGTH_SHORT,
            timeInSecForIosWeb: 30,
            gravity: ToastGravity.BOTTOM);
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()));
      }else{
        Fluttertoast.showToast(
            msg: data['message'],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM);
      }


    }catch(Exception) {
      print(Exception);
      Fluttertoast.showToast(
          msg: 'The server is temporary unable to complete the request',
          toastLength: Toast.LENGTH_SHORT,
          timeInSecForIosWeb: 30,
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
                      padding:  EdgeInsets.all(20),
                      child: Text(
                        "Create account",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 24
                        ),
                      ),
                    ),
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
                        key: _formkey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "First name *",
                                style: GoogleFonts.poppins(
                                    fontSize: 16
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller: _firstnameEditingController,
                                autocorrect: false,
                                enableSuggestions: false,
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'Firstname is required';
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
                                    hintText: "First Name",
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
                                "Last name *",
                                style: GoogleFonts.poppins(
                                    fontSize: 16
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller: _lastnameEditingController,
                                autocorrect: false,
                                enableSuggestions: false,
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'Lastname is required';
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
                                    hintText: "Last Name",
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
                                "Phone number *",
                                style: GoogleFonts.poppins(
                                    fontSize: 16
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: CountryPickerDropdown(
                                    initialValue: 'in',
                                    itemBuilder: _buildDropdownItem,
                                    onValuePicked: (Country country) {
                                      print("Countryname: ${country.isoCode}");
                                      countryCode = ("+")+country.phoneCode.toString();
                                      print("Countrycode: ${countryCode}");
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      controller: _phonenumberEditingController,
                                      autocorrect: false,
                                      enableSuggestions: false,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if(value!.isEmpty){
                                          return 'Mobile number is required';
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
                                          hintText: "0121 234 5648",
                                          hintStyle: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xff8898aa)
                                          )
                                      ),

                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Email address *",
                                style: GoogleFonts.poppins(
                                    fontSize: 16
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller: emailEditingController,
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
                                "Password *",
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
                                obscureText: _isVisible? false: true,
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
                                          _isVisible = !_isVisible;
                                        });
                                      },
                                      child: Container(
                                        child: Icon(
                                          _isVisible?
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
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Repeat the Password *",
                                style: GoogleFonts.poppins(
                                    fontSize: 16
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller: _rptPasswordEditingController,
                                autocorrect: false,
                                obscureText: rptVisible? false: true,
                                enableSuggestions: false,
                                onChanged: (value) {
                                  setState(() {

                                  });
                                },
                                decoration: InputDecoration(
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          rptVisible = !rptVisible;
                                        });
                                      },
                                      child: Container(
                                        child: Icon(
                                          rptVisible?
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
                                    hintText: "Repeat the Password",
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
                                  if(_formkey.currentState!.validate()){
                                    print("Validation");
                                    register();
                                  }
                                },
                                child: Text(
                                  "Submit",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                  children:[
                                    Text(
                                      "Already have an account?",
                                      style: GoogleFonts.poppins(
                                          fontSize: 11
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: (){
                                        Navigator.of(context).
                                        push(MaterialPageRoute(builder: (BuildContext) => LoginPage()));
                                      },
                                      child: Text(
                                          "Log in here",
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownItem(Country country) => Container(
    child: Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        SizedBox(
          width: 8.0,
        ),
        Text("+${country.phoneCode}(${country.isoCode})"),
      ],
    ),
  );
}
