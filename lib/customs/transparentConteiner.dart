import 'package:glass_kit/glass_kit.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class TransparentContainer extends StatelessWidget {
  TransparentContainer(
      {super.key,
      required this.child,
      required this.height,
      required this.width});
  Widget child;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height,
      width:  width,
      child: GlassContainer.frostedGlass(
          // margin: EdgeInsets.all(10),
          borderRadius: BorderRadius.circular(0),
          // borderWidth: 1.5,
          blur: 0.0,
          frostedOpacity: 0.0,
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 0, 0, 0).withOpacity(0.75),
              const Color.fromARGB(255, 0, 0, 0).withOpacity(0.75),
            ],
            begin: const Alignment(-0.10, -1.0),
            end: const Alignment(0.00, 1.0),
          ),
          borderGradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 0, 0, 0).withOpacity(0.06),
                const Color.fromARGB(255, 0, 0, 0).withOpacity(0.06),
                const Color.fromARGB(255, 0, 0, 0).withOpacity(0.06),
                const Color.fromARGB(255, 0, 0, 0).withOpacity(0.06),
              ],
              begin: const Alignment(0.35, -1.0),
              end: Alignment.bottomRight,
              stops: const [0.0, 0.30, 0.31, 1.0]
              // stops: []
              ),
          // padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
          elevation: 5.0,
          child: Center(child: child)),
    );
  }
}
