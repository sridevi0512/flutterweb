import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutterweb/screens/loginPage.dart';
import 'package:flutterweb/utils/apiUrl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController _firstnameController = new TextEditingController();
  TextEditingController _lastnameController = new TextEditingController();
  TextEditingController _dobController = new TextEditingController();
  TextEditingController _mobilenumberController = new TextEditingController();
  SharedPreferences? prefs;
  var user_token, user_id, first_name, last_name, country_code, phone_number, email;


  Future<String?> profile() async{
    prefs = await SharedPreferences.getInstance();
    user_token = prefs!.getString("user_token");
    print("token: $user_token");
    final req = await http.post(Uri.parse(ApiUrl.BASE_URL + ApiUrl.PROFILE),
    headers: <String, String>{
      'Content-Type': 'application/json',
      'Authorization': user_token
    },
   /* body: json.encode({
      "user_id": user_id
    })*/
    );

    try{
      var data = jsonDecode(req.body);
      print(data);
      if(data['status'] == "true"){
        setState((){
          first_name = data["details"]['first_name'];
          last_name = data["details"]['last_name'];
          country_code = data["details"]['country_code'];
          phone_number = data["details"]['phone_number'];
          email = data["details"]['email'];
        });


      } else{
        Fluttertoast.showToast(
            msg: data['message'],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM
        );
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => LoginPage())
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
  void initState() {
    // TODO: implement initState
    super.initState();
    // getUserToken();
     profile();
  }
  @override
  Widget build(BuildContext context) {
    _firstnameController.text = (first_name== null)? "Yours name" : first_name;
    _lastnameController.text = (last_name== null)? "Yours name" : last_name;
    _mobilenumberController.text = (phone_number== null)? "Yours number" : phone_number.toString();
    _dobController.text = "05-12-1996";
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Personal Information",
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Profile Image",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.black
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [

                ],
              ),
              SizedBox(height: 10),
              Text(
                "General",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 18
                ),
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "First name *",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey.shade500
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width/3,
                          child: TextFormField(
                            controller: _firstnameController,
                            autocorrect: false,
                            enableSuggestions: false,
                            onChanged: (value) {
                              setState(() {

                              });
                            },

                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                    borderRadius: BorderRadius.circular(7)
                                ),
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Last name *",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.grey.shade500
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width/3,
                          child: TextFormField(
                            controller: _lastnameController,
                            autocorrect: false,
                            enableSuggestions: false,
                            onChanged: (value) {
                              setState(() {

                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                    borderRadius: BorderRadius.circular(7)
                                ),
                            ),

                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
              SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Birth Date ",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.grey.shade500
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                      child: TextFormField(
                        controller: _dobController,
                        autocorrect: false,
                        enableSuggestions: false,
                        onChanged: (value) {
                          setState(() {

                          });
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                                borderRadius: BorderRadius.circular(7)
                            ),
                        ),

                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Phone number",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.grey.shade500
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width/3,
                          child: TextFormField(
                            controller: _mobilenumberController,
                            autocorrect: false,
                            enableSuggestions: false,
                            onChanged: (value) {
                              setState(() {

                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                    borderRadius: BorderRadius.circular(7)
                                ),
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Time zone",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.grey.shade500
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width/3,
                          child: TextFormField(
                            // controller: ,
                            autocorrect: false,
                            enableSuggestions: false,
                            onChanged: (value) {
                              setState(() {

                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                    borderRadius: BorderRadius.circular(7)
                                ),
                                labelText: "Time Zone",
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
                  )

                ],
              )


            ],
          ),
        ),
      ),

    );
  }
}
