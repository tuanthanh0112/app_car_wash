import 'package:flutter/material.dart';

class DefultTextLaple extends StatelessWidget {
  DefultTextLaple({super.key, this.hinttext, this.lableText, required controller, required this.icon});
  final String? hinttext;
  final String? lableText;
  final Icon icon;

  // final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      // key: formkay,
      TextFormField(
        // controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Text is empty';
          }
        },
        keyboardType: TextInputType.text,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: ((value) {}),
        decoration: InputDecoration(
          icon: icon,
          border:const UnderlineInputBorder(),
          labelText: lableText,
          hintText: hinttext,
          // contentPadding:const EdgeInsets.fromLTRB(20, 10, 20, 10),
          // focusedBorder: OutlineInputBorder(
          //     borderRadius: BorderRadius.circular(100.0),
          //     borderSide:const BorderSide(color: Colors.grey)),
          // enabledBorder:const OutlineInputBorder(
          //     borderRadius: BorderRadius.circular(100.0),
          //     borderSide:const BorderSide(color: Color.fromARGB(0,0,0, 161))),
          // errorBorder:const OutlineInputBorder(
          //     borderRadius: BorderRadius.circular(100.0),
          //     borderSide:const BorderSide(color: Colors.red, width: 2.0)),
          // focusedErrorBorder: const OutlineInputBorder(
              // borderRadius: BorderRadius.circular(100.0),
              // borderSide:BorderSide(color: Colors.red, width: 2.0)),
        ),
      );
  }
}