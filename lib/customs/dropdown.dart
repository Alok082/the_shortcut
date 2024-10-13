import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dropdown extends StatelessWidget {
  Dropdown(
      {super.key,
      required this.validater,
      required this.hinttext,
       this.value,
      required this.itemlist,
      required this.onchange});
  Function(String value) validater;
  Function(String value) onchange;

    // [
    //       const DropdownMenuItem(value: 'male', child: Text('Male')),
    //       const DropdownMenuItem(value: 'female', child: Text('Female')),
    //       const DropdownMenuItem(value: 'other', child: Text('Other')),
    //     ], like this 
  List<DropdownMenuItem<String>> itemlist;
  String? value;
  String hinttext;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String?>(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => validater(value!),
        icon: const Icon(
          CupertinoIcons.chevron_down,
          size: 15,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          hintText: hinttext,
          // this is for taking gender you can modify according to your work
          prefixIcon: const Icon(Icons.people_outline_sharp),
          prefixIconColor: const Color.fromARGB(255, 0, 129, 84),
          // Added this
          // contentPadding: EdgeInsets.all(10),

          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 2,
                color: Color.fromARGB(255, 157, 157, 157),
              ),
              borderRadius: BorderRadius.circular(12)),
          hintStyle: const TextStyle(color: Color.fromARGB(255, 105, 105, 105)),
          border: OutlineInputBorder(
            gapPadding: Checkbox.width * 0.1,
            borderRadius: BorderRadius.circular(15),
            // borderSide: BorderSide(
            //   color: const Color.fromARGB(255, 222, 222, 222),
            // ),
          ),
        ),
         hint: Text(hinttext),
        value: value,
        items: itemlist,
        // [
        //   const DropdownMenuItem(value: 'male', child: Text('Male')),
        //   const DropdownMenuItem(value: 'female', child: Text('Female')),
        //   const DropdownMenuItem(value: 'other', child: Text('Other')),
        // ],
        onChanged: (value) => onchange(value!));
  }
}
