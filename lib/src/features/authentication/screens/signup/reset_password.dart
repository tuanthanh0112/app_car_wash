import 'package:appcarwash/src/constants/text_string.dart';
import 'package:appcarwash/src/features/authentication/screens/login/component/custom_textfiled.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(

        title:const Text('Reset password', style: TextStyle(color: Colors.lightBlue, fontSize: 14),),
      ),
      body: Center(
        child: Padding(
          padding:const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: DefultTextLaple(
                    lableText: tEmail,
                    hinttext: tEmail,
                    controller:_controller ,
                    icon:const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
