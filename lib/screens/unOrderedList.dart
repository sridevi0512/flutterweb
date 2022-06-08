import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UnOrderedList extends StatelessWidget {

  UnOrderedList(this.texts);
  final List<String> texts;
  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for(var text in texts) {
      widgetList.add(UnorderedListItem(text));

      widgetList.add(SizedBox(height: 10));
    }
    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  UnorderedListItem(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),),
          Text(text,
            textAlign: TextAlign.justify,
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.normal
            ),)
        ],
      ),
    );
  }
}

