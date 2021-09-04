import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:teranga_app/utils/constant-by-dii.dart';
import 'package:teranga_app/widgets/page-home.dart';

class HomeOneLaptop extends StatefulWidget {
  @override
  _HomeOneLaptopState createState() => _HomeOneLaptopState();
}

class _HomeOneLaptopState extends State<HomeOneLaptop> {
  Size size;
  // AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
  bool playSong = false;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * .9,
          width: size.width * .9,
          decoration: BoxDecoration(
              color: Constant.bLANC(), borderRadius: BorderRadius.circular(35)),
        ),
        Positioned(
            child: Container(
          height: size.height * .7,
          width: size.width,
          child: Carousel(
            boxFit: BoxFit.contain,
            autoplay: false,
            animationCurve: Curves.easeIn,
            autoplayDuration: Duration(seconds: 20),
            dotIncreasedColor: Constant.bLUE(),
            dotColor: Constant.oRANGE(),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.bottomCenter,
            dotVerticalPadding: 10.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,
            dotSpacing: 15.0,
            images: [
              PageHome(
                urlTof: 'assets/images/car.png',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
                titre: 'Voiture',
              ),
              PageHome(
                urlTof: 'assets/images/scooter-png.png',
                titre: 'scooter',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
              ),
            ],
          ),
          decoration: BoxDecoration(
              // color: Constant.vERT(),
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          )),
        )),
        Positioned(
            // left: (size.width * .5 - 50),
            bottom: 20,
            child: Container(
              height: 75,
              width: size.width,
              decoration: BoxDecoration(
                  // color: Constant.bLUE(),
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/AcidicGlamorousCirriped-max-1mb.gif'))),
            ))
      ],
    );
  }
}
