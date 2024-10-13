import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.controller,
      required this.ispasswordtype,
      required this.validater,
      required this.padding,
      this.hinttext,
      this.maxlength,
      this.readonly,
      this.numbertype = false});

  bool ispasswordtype;
  TextEditingController controller;

  Function(String value) validater;
  String? hinttext;
  int? maxlength;
  bool? readonly;
  bool numbertype;
  EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          maxLength: maxlength,
          readOnly: readonly ?? false,
 onTapOutside: (event) {
                            FocusScope.of(context).unfocus();
                          },
          // showCursor: false,
          // inputFormatters: [
          //   numbertype
          //       ? FilteringTextInputFormatter.digitsOnly
          //       : FilteringTextInputFormatter.deny('')
          // ],
          validator: (value) => validater(value!),
          controller: controller,
          textAlign: TextAlign.start,
          style: const TextStyle(fontSize: 16, color: Colors.white),
          cursorHeight: 25,
          obscureText: ispasswordtype,
          enableSuggestions: !ispasswordtype,
          autocorrect: !ispasswordtype,
          decoration: InputDecoration(
            hintText: hinttext,
            hintFadeDuration: Duration(seconds: 6),

            isDense: true, // Added this
            contentPadding: const EdgeInsets.all(10),
            filled: true,
            // this is used  to make it transparant
            fillColor: Colors.transparent,
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 222, 222, 222),
                ),
                borderRadius: BorderRadius.circular(12)),
            hintStyle:
                const TextStyle(color: Color.fromARGB(210, 196, 195, 195)),
            border: OutlineInputBorder(
              gapPadding: Checkbox.width * 0.1,
              borderRadius: BorderRadius.circular(15),
              // borderSide: BorderSide(
              //   color: const Color.fromARGB(255, 222, 222, 222),
              // ),
            ),
          ),
          keyboardType: ispasswordtype
              ? TextInputType.visiblePassword
              : numbertype
                  ? TextInputType.number
                  : TextInputType.emailAddress),
    );
  }
}
