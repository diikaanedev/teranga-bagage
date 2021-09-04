import 'dart:ui';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:teranga_app/screen/home-one-laptop.dart';
import 'package:teranga_app/screen/home-two-laptop.dart';
import 'package:teranga_app/utils/constant-by-dii.dart';
import 'package:teranga_app/widgets/menu-list-item.dart';

double width = window.physicalSize.width / window.devicePixelRatio;
double height = window.physicalSize.height / window.devicePixelRatio;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Size size;
  bool playSong = false;
  @override
  Widget build(BuildContext context) {
    // StatusBar.color(Constant.BLANC());
    // size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // color: Constant.ORANGE(),
      theme: ThemeData(fontFamily: 'Rubik', primaryColor: Constant.bLANC()),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: .0,
          backgroundColor: Constant.bLANC(),
        ),
        body: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: Colors.grey.withOpacity(.05),
            ),
            Positioned(
                top: 0,
                child: Container(
                  height: height * .1,
                  width: width,
                  // color: Constant.rOUGE(),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * .1,
                      ),
                      Container(
                        height: height * .07,
                        width: height * .3,
                        // color: Constant.NOIR(),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage('assets/images/logotg.png'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: width * .03,
                      ),
                      Container(
                        width: width * .07,
                        child: Row(
                          children: [
                            Spacer(),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/backward.png'))),
                            ),
                            Spacer(),
                            AudioWidget.assets(
                              path: "assets/audios/nix_talouniou-fo.mp3",
                              initialPosition: Duration(seconds: 0),
                              loopMode: LoopMode.playlist,
                              play: playSong,
                              child: GestureDetector(
                                  // color: Colors.transparent,
                                  child: playSong
                                      ? Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/pause.png'))),
                                        )
                                      : Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/play-button.png'))),
                                        ),
                                  onTap: () {
                                    setState(() {
                                      playSong = !playSong;
                                    });
                                  }),
                              onReadyToPlay: (duration) {
                                //onReadyToPlay
                              },
                              onPositionChanged: (current, duration) {
                                //onPositionChanged
                              },
                            ),
                            Spacer(),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/forward.png'))),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * .02,
                      ),
                      Container(
                        height: 50,
                        width: width * .25,
                        child: Row(
                          children: [
                            Spacer(),
                            Container(
                              width: 30,
                              child: Icon(
                                Icons.search_outlined,
                                size: 30,
                                color: Constant.nOIR(),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: .2,
                                  spreadRadius: 1,
                                  color: Constant.gRIS()),
                              BoxShadow(
                                  blurRadius: .2,
                                  spreadRadius: 1,
                                  color: Constant.bLANC()),
                            ],
                            color: Constant.bLANC()),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      Text(
                        'Connexion',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w200),
                      ),
                      SizedBox(
                        width: width * .03,
                      ),
                      Text(
                        'Inscription',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w200),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      Text(
                        '?',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                )),
            Positioned(
                // top: height * .02,
                left: width * .01,
                child: Container(
                  height: height * .9,
                  width: width * .03,
                  // color: Constant.jAUNE(),
                  child: Column(
                    children: [
                      SizedBox(height: height * .15),
                      MenuListItem(
                        titre: 'Home',
                        isActif: true,
                      ),
                      SizedBox(height: height * .03),
                      MenuListItem(
                        titre: 'Devis',
                        isActif: false,
                      ),
                      SizedBox(height: height * .03),
                      MenuListItem(
                        titre: 'Contact',
                        isActif: false,
                      ),
                      SizedBox(
                        height: height * .1,
                      ),
                      Spacer(),
                      Text(
                        'FR',
                        style: TextStyle(
                            fontSize: 16,
                            height: .6,
                            // fontFamily: 'Poiret One',
                            fontWeight: FontWeight.w100,
                            color: Constant.nOIR()),
                      ),
                      Icon(Icons.arrow_drop_down_sharp),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )),
            Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: height,
                  width: width * .1,
                  // color: Constant.rOUGE(),
                )),
            Positioned(
                top: height * .1,
                left: width * .05,
                child: Container(
                  height: height * .85,
                  width: width * .9,
                  // color: Constant.vERT(),
                  child: PageView(
                    physics: BouncingScrollPhysics(),
                    controller: PageController(
                      initialPage: 0,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [HomeOneLaptop(), HomeTwoLaptop()],
                  ),
                )),
            Positioned(
                child: Container(
              height: height * .05,
              width: width * .05,
            ))
          ],
        ),
      ),
    );
  }
}
