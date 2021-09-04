import 'package:flutter/material.dart';
import 'package:teranga_app/utils/constant-by-dii.dart';

class MenuListItem extends StatefulWidget {
  final String titre;
  final bool isActif;

  const MenuListItem({Key key, this.titre, this.isActif}) : super(key: key);
  @override
  _MenuListItemState createState() => _MenuListItemState();
}

class _MenuListItemState extends State<MenuListItem> {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Card(
      elevation: widget.isActif ? 2 : 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      color: Colors.transparent,
      child: Container(
        width: size.width * .02,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          boxShadow: widget.isActif
              ? [
                  BoxShadow(
                      blurRadius: .1,
                      color: Constant.gRIS().withOpacity(.01),
                      offset: Offset(0, 0)),
                  BoxShadow(
                      blurRadius: .2,
                      color: Constant.bLANC(),
                      offset: Offset(0, 0)),
                ]
              : [],
          // color: widget.isActif ? Constant.bLANC() : Colors.transparent,
          gradient: widget.isActif
              ? LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                      Colors.white,
                      Colors.grey.withOpacity(.05),
                      Colors.grey.withOpacity(.01),
                    ])
              : LinearGradient(colors: [
                  Colors.grey.withOpacity(.002),
                  Colors.grey.withOpacity(.002)
                ]),
        ),
        child: Column(
          children: getList(widget.titre.toUpperCase(), widget.isActif),
        ),
      ),
    );
  }

  getList(String t, bool isOK) {
    List<Widget> liste = [];
    liste.add(SizedBox(
      height: 10,
    ));
    for (var i = t.length - 1; i >= 0; i--) {
      liste.add(RotatedBox(
          quarterTurns: 3,
          child: Text(
            t[i],
            style: TextStyle(
                fontSize: 16,
                // fontFamily: 'Poiret One',
                fontWeight: FontWeight.w100,
                color: isOK ? Constant.nOIR() : Constant.nOIR()),
          )));
    }
    // for (var i = 0; i < t.length; i++) {

    // }
    liste.add(SizedBox(
      height: 10,
    ));
    return liste;
  }
}
