import 'package:flutter/material.dart';

// how to use  => pushNameNaviagte( context, '/Bottombarpages',arguments: data.name);

void pushNameNaviagte(BuildContext context, String routeName, {dynamic arguments}) {
  Navigator.pushNamed(context, routeName, arguments: arguments);
}


// how to use  => pushReplacementNameNaviagte( context, '/Bottombarpages',arguments: data.name);
void pushReplacementNameNaviagte(BuildContext context, String routeName, {dynamic arguments}) {
  Navigator.pushReplacementNamed(context, routeName, arguments: arguments);
}