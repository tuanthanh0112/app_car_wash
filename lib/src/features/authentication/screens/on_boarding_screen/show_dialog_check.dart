import 'package:appcarwash/src/features/authentication/screens/on_boarding_screen/message_alert.dart';
import 'package:flutter/material.dart';

class ShowDialogCheck extends StatefulWidget {
  const ShowDialogCheck({super.key, required this.title, required this.description});
  final String title, description;
  @override
  State<ShowDialogCheck> createState() => _ShowDialogCheckState();
}

class _ShowDialogCheckState extends State<ShowDialogCheck> {

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor:const Color(0xffffffff),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 15),
          Text(
            "${widget.title}",
            style:const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Text("${widget.description}"),
          const SizedBox(height: 20),
          const Divider(
            height: 1,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: InkWell(
              highlightColor: Colors.grey[200],
              child: Center(
                child: Checkbox(value: true, onChanged: (a) {},
                  activeColor: Colors.black,
                )
              ),
            ),
          ),
          const Divider(
            height: 1,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: InkWell(
              borderRadius:const BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              highlightColor: Colors.grey[200],
              onTap: () {
                showDialog(context: context,
                builder: (context) {
                return const MessageDialog();
                });
              },
              child:const Center(
                child: Text(
                  "Agree and get started",
                  style: TextStyle(
                    fontSize: 20.0,
                    // color: Colors.white70,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
