import 'package:appcarwash/src/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
class MessageDialog extends StatelessWidget {
  const MessageDialog({super.key});

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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Login()));
              },
              child:const Center(
                child: Text(
                  "ok",
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

