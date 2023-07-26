import 'package:flutter/material.dart';

class defultbutton extends StatelessWidget {
  const defultbutton(
      {super.key,
        required this.text,
        required this.press,
        required this.color});
  final String? text;
  final Function press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press as void Function()?,
      child: Container(
        margin:const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Center(
          child: Text(text!,
              style:const TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 255, 255, 255))),
        ),
      ),
    );
  }
}