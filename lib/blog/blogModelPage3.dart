import 'package:flutter/material.dart';

class BlogModelPage3 extends StatefulWidget {
  const BlogModelPage3({Key? key}) : super(key: key);

  @override
  State<BlogModelPage3> createState() => _BlogModelPage3State();
}

class _BlogModelPage3State extends State<BlogModelPage3> {
  bool isVisible = true;
  TextEditingController controllerblog2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        child:Align(
            alignment: Alignment.topLeft,
            child: Container(
                width: MediaQuery.of(context).size.width/4,
                padding: EdgeInsets.all(20),
                child: TextFormField(
                    controller: controllerblog2,
                    onChanged: (text){
                      setState(() {
                        controllerblog2.text.isEmpty ? isVisible = true : isVisible = false;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))
                      ),
                      prefixIcon: Visibility(
                        visible: isVisible,
                        child: Icon(Icons.search, color: Color.fromRGBO(101, 133, 237, 0.7)),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                )
            )
        )
    );
  }
}
