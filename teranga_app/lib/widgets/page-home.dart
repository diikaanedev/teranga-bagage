import 'package:flutter/material.dart';
import 'package:teranga_app/utils/constant-by-dii.dart';

class PageHome extends StatefulWidget {
  final String urlTof;
  final String titre;
  final String description;

  const PageHome({Key key, this.urlTof, this.titre, this.description})
      : super(key: key);
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * .7,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
            // image: DecorationImage(
            //     image: AssetImage(widget.urlTof), fit: BoxFit.cover)
          ),
        ),
        Positioned(
            top: size.height * .45,
            left: size.width * .15,
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              // color: Constant.bLUE(),
              child: Container(
                height: size.height * .05,
                width: size.width * .27,
                child: Row(
                  children: [
                    Spacer(),
                    Text(
                      'Ajouter à son devis',
                      style: TextStyle(fontSize: 18, color: Constant.bLUE()),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_right_alt_rounded,
                      size: 30,
                      color: Constant.bLUE(),
                    ),
                    Spacer(),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Constant.bLANC(),
                ),
              ),
            )),
        Positioned(
            top: size.height * .37,
            left: size.width * .15,
            child: Container(
              height: size.height * .07,
              width: size.width * .3,
              child: Center(
                child: Text(
                  widget.description,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              // color: Constant.jAUNE(),
            )),
        Positioned(
            top: size.height * .26,
            left: size.width * .15,
            child: Container(
              height: size.height * .1,
              width: size.width * .3,
              // color: Constant.jAUNE(),
              child: Center(
                child: Text(
                  '${widget.titre}'.toUpperCase(),
                  style: TextStyle(fontSize: 50, color: Constant.bLUE()),
                ),
              ),
            )),
        Positioned(
            right: 10,
            top: size.height * .17,
            child: Container(
              height: size.height * .4,
              width: size.width * .4,
              // color: Constant.mARONDUR(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.urlTof), fit: BoxFit.contain)),
            )),
      ],
    );
  }
}
