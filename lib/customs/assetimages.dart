import 'package:flutter/material.dart';




Widget assetsimages(String image, double mediaheight, double mediawidth) {
  return Container(
    // margin: EdgeInsets.only(top: 50),
    height: mediaheight,
    width:  mediawidth,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
      image,
    ))),
  );
}

Widget assetsimagescircular(
  String image,
  double mediaheight, double mediawidth,
) {
  return Container(
    // margin: EdgeInsets.only(top: 50),
    height:  mediaheight,
    width: mediawidth,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),

    child: Image.asset(
      image,
      fit: BoxFit.cover,
    ),
  );
}
