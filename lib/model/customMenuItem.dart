import 'package:flutter/material.dart';
class CustomMenuItem extends StatelessWidget {
  final String? title;
  final Function? press;
  const CustomMenuItem({Key? key,
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
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
