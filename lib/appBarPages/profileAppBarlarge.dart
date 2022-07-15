import 'package:flutter/material.dart';
import 'package:flutterweb/model/customMenuItem.dart';


class ProfileAppBarLargePage extends StatefulWidget implements PreferredSizeWidget {
  Size preferredSize;

  ProfileAppBarLargePage({Key? key}) :
        preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  State<ProfileAppBarLargePage> createState() => _ProfileAppBarLargePageState();


}

class _ProfileAppBarLargePageState extends State<ProfileAppBarLargePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Color(0xff93a4e6)
        ),
        child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  "assets/images/footer-logo.png",
                  width: 200,
                  height: 34,
                  fit: BoxFit.cover,
                ),
              ),
              Spacer(),
              CustomMenuItem(
                  title: "My transformation",
                  press:(){
                  }
              ),
              Spacer(),
              CustomMenuItem(
                  title: "Iching",
                  press:(){
                  }
              ),
              Spacer(),
              CustomMenuItem(
                title: "Profile friends",
                press: (){

                },
              ),
              Spacer(),
              CustomMenuItem(
                title: "Meridian Diagnosis",
                press: (){

                },
              ),
              Spacer(),
              CustomMenuItem(
                title: "Blog",
                press: (){

                },
              ),
              Spacer(),
              IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
              Spacer(),
              GestureDetector(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/images/placeholder.png"),
                  ),
                ),
              )
            ]
        )
    );
  }
}
