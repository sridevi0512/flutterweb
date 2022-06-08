import 'package:flutter/material.dart';
class AppBarMenuItem extends StatelessWidget {
  final String? title;
  final Function? press;
  const AppBarMenuItem({Key? key,
    this.title,
    this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        press!();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          title!,
          style: TextStyle(
              color: Color(0xff2b2b35),
              fontSize: 15,
              fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
