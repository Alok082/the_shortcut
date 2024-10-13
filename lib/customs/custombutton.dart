import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String button_name;
  Function() buttonaction;
  Color buttoncolor;
  EdgeInsets padding;
    EdgeInsets margin;
  Size buttonsize;
  CustomButton(
      {super.key,
      required this.margin,
      required this.buttoncolor,
      required this.button_name,
      required this.buttonaction,
      required this.padding,
      required this.buttonsize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:margin ,
      height: buttonsize.height,
      width: buttonsize.width,
      padding: padding,
      decoration: BoxDecoration(
        color: buttoncolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: ElevatedButton(
          onPressed: () {
            buttonaction();
          },
          style: ElevatedButton.styleFrom(
            alignment: Alignment.center,
            backgroundColor: Colors.transparent,
            // elevation: 12,
            elevation: 0.0,
            // padding: EdgeInsets.symmetric(horizontal: 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: Center(
              child: Text(
                button_name,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
