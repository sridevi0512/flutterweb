import 'package:flutter/cupertino.dart';

class SizeConfig{
  static double screenHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }

  static double screenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
}