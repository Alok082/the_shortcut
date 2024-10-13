import 'package:flutter/material.dart';
import 'dart:io';

class Datepicker {
 static Future<DateTime?> showdatepicker(BuildContext context) async {
    return await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
  }
}
