import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:flutterweb/responsiveWidget.dart';
import 'package:flutterweb/screens/aboutPage.dart';
import 'package:flutterweb/screens/footorPage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class OurStoryPage extends StatefulWidget {
  const OurStoryPage({Key? key}) : super(key: key);

  @override
  State<OurStoryPage> createState() => _OurStoryPageState();
}

class _OurStoryPageState extends State<OurStoryPage> {
  VideoPlayerController? _controller;

  bool _onTouch = false;

  Timer? _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/images/video.mp4',

    )
    ..initialize().then((_) {

      setState(() {
      });
    });
    _controller!.pause();


  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
    _timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/grey_wave.png',
                ),
                fit: BoxFit.cover
            )
        ),
        child:
        (ResponsiveWidget.isSmallScreen(context))?
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Our Story".toUpperCase(),
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 16
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Who stand behind it?",
                      style: Theme.of(context).textTheme.headline2?.merge(
                          GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 36
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Philip Cooper - a founder of Hypnoseed",
                      style: GoogleFonts.kalam(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Philip Cooper is a qualified hypnotherapist and experienced meditator who has been \npractising healing arts for 25 years. Outside of this Philip loves sports, music and cooking.",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "His studies and practice have taken him around the world including the Himalayas and \nthe Amazon. While in Ibiza in 2014 as an apprentice to a shaman he first imagined \nHypnoseed - a way to manage one's own mental and emotional performance online.",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Philip believes that our reality is based on a collection of suggestions we use to describe \nself. Therefore we can mindfully suggest new supportive ways of being and perform self-\ntransformation.",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 55,
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text(
                        "Join for free",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff4f76f6)
                      ),
                    ),
                  ),
            Expanded(
              child: _controller!.value.isInitialized
                  ? Container(
                height: MediaQuery.of(context).size.height,
                    child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      VideoPlayer(_controller!),

                      // Add a play or pause button overlay
                      Container(
                        color: Colors.transparent,
                        alignment: Alignment.center,
                        child: FlatButton(
                          color: Colors.white,
                          height: 50,
                          minWidth: 50,
                          shape: CircleBorder(),
                          child: Icon(_controller!.value.isPlaying ? Icons.pause : Icons.play_arrow, color: Colors.black38.withOpacity(0.5),
                            size: 40,),
                          onPressed: () {
                            _timer?.cancel();

                            // pause while video is playing, play while video is pausing
                            setState(() {
                              _controller!.value.isPlaying ?
                              _controller!.pause() :
                              _controller!.play();
                            });

                            // Auto dismiss overlay after 1 second
                            _timer = Timer.periodic(Duration(milliseconds: 1000), (_) {
                              setState(() {
                                _onTouch = false;
                              });
                            });
                          },
                        ),
                      )

                    ]
              ),
                  ):Container(),
            )
          ],
        )
        :Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Our Story".toUpperCase(),
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 16
                        ),
                      ),
                      Text(
                        "Who stand behind it?",
                        style: Theme.of(context).textTheme.headline2?.merge(
                            GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              fontSize: 36
                            )
                        ),
                      ),
                      Text(
                        "Philip Cooper - a founder of Hypnoseed",
                        style: GoogleFonts.kalam(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          "Philip Cooper is a qualified hypnotherapist and experienced meditator who has been \npractising healing arts for 25 years. Outside of this Philip loves sports, music and cooking.",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          "His studies and practice have taken him around the world including the Himalayas and \nthe Amazon. While in Ibiza in 2014 as an apprentice to a shaman he first imagined \nHypnoseed - a way to manage one's own mental and emotional performance online.",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          "Philip believes that our reality is based on a collection of suggestions we use to describe \nself. Therefore we can mindfully suggest new supportive ways of being and perform self-\ntransformation.",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 55,
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Text(
                            "Join for free",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff4f76f6)
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  child: _controller!.value.isInitialized
                  ? Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height/2,
                              width: MediaQuery.of(context).size.width/3,
                              child: VideoPlayer(_controller!)),
                        ),
                      ),

                      // Add a play or pause button overlay
                      Positioned(
                        child: Container(
                          color: Colors.transparent,
                          alignment: Alignment.center,
                          child: FlatButton(
                            color: Colors.white,
                            height: 50,
                            minWidth: 50,
                            shape: CircleBorder(),
                            child: Icon(_controller!.value.isPlaying ? Icons.pause : Icons.play_arrow, color: Colors.black38.withOpacity(0.5),
                            size: 40,),
                            onPressed: () {
                              _timer?.cancel();

                              // pause while video is playing, play while video is pausing
                              setState(() {
                                _controller!.value.isPlaying ?
                                _controller!.pause() :
                                _controller!.play();
                              });

                              // Auto dismiss overlay after 1 second
                              _timer = Timer.periodic(Duration(milliseconds: 1000), (_) {
                                setState(() {
                                  _onTouch = false;
                                });
                              });
                            },
                          ),
                        ),
                      )

                    ]
                  ):Container(),
                ),


              ],

            ),
          ],
        ),
      ),
    );
  }
}


