import 'package:flutter/material.dart';
import 'package:flutterweb/appBarPages/profileAppBarlarge.dart';
import 'package:flutterweb/appBarPages/profileAppBarsmall.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/screens/editProfile.dart';
import 'package:flutterweb/screens/emailPage.dart';
import 'package:flutterweb/screens/notificationsettingPage.dart';
import 'package:flutterweb/screens/passwordPage.dart';
import 'package:flutterweb/screens/subscriptionPage.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int? _userProfileSelectedIndex;
  List profileArray = [
    EditProfilePage(),
    EmailPage(),
    PasswordPage(),
    SubscriptionPage(),
    NotificationSettingsPage()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userProfileSelectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: (ResponsiveWidget.isSmallScreen(context) || ResponsiveWidget.isMediumScreen(context))?
          ProfileAppBarSmallPage(): PreferredSize(child: ProfileAppBarLargePage(), preferredSize: Size.fromHeight(60)),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xff93a4e6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Color(0xff93a4e6),
                        height: MediaQuery.of(context).size.height/3,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Edit Profile",
                            style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20)
                                )
                              ),
                              child: Container(
                                height: MediaQuery.of(context).size.height/1.9,
                                padding: EdgeInsets.all(10),
                                child: NavigationRail(
                                  destinations: _buildProfileDestinations(),
                                  selectedIndex: _userProfileSelectedIndex,
                                  extended: true,
                                  onDestinationSelected: (int index) {
                                    setState(() {
                                      _userProfileSelectedIndex = index;
                                    });
                                  },
                                ),
                              ),
                            ),
                            VerticalDivider(),
                            Expanded(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: profileArray[_userProfileSelectedIndex!],
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        ));
  }
  List<NavigationRailDestination> _buildProfileDestinations() {
    return [

      NavigationRailDestination(
          icon: Icon(Icons.account_circle_outlined,
            size: 30,),
          label: Text(
            "Personal Information",
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600
            ),
          )),
      NavigationRailDestination(
          icon: Icon(Icons.email,
            size: 30,
          ),
          label: Text(
            "Email",
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600
            ),
          )),
      NavigationRailDestination(
          icon: Icon(Icons.lock,
            size: 30,),
          label: Text(
            "Password",
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600
            ),
          )),
      NavigationRailDestination(
          icon: Icon(
            Icons.euro_outlined,
            size: 30,
          ),
          label: Text(
            "Subscription",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 20
            ),
          )),
      NavigationRailDestination(
          icon: Icon(
            Icons.notifications,
            size: 30,
          ),
          label: Text(
            "Notification",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 20
            ),
          ))
    ];
  }
}


