import 'package:flutter/material.dart';
import 'package:teranga_app/utils/constant-by-dii.dart';

class HomeTwoLaptop extends StatefulWidget {
  @override
  _HomeTwoLaptopState createState() => _HomeTwoLaptopState();
}

class _HomeTwoLaptopState extends State<HomeTwoLaptop> {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: .0,
        backgroundColor: Constant.bLANC(),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            child: Center(
              child: new RotatedBox(
                  quarterTurns: 3, child: new Text("Lorem ipsum")),
            ),
          )
        ],
      ),
    );
  }
}
