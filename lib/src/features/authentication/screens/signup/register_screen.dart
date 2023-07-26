import 'package:appcarwash/src/constants/text_string.dart';
import 'package:appcarwash/src/features/authentication/screens/login/component/custom_textfiled.dart';
import 'package:flutter/material.dart';




class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});


  @override
  Widget build(BuildContext context) {

    bool checkValue = false;

    TextEditingController _controller = TextEditingController();
    return Material(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: DefultTextLaple(
                  lableText: tEmail,
                  hinttext: tEmail,
                    controller:_controller ,
                    icon:const Icon(Icons.email_outlined),
                ),
              ),
              Container(
                child: DefultTextLaple(
                  controller:_controller ,
                  lableText: tPassword,
                  hinttext: tPassword,
                  icon:const Icon(Icons.email_outlined),
                ),
              ),
              Container(
                child: DefultTextLaple(
                  controller:_controller ,
                  lableText: tConfirmPassword,
                  hinttext: tConfirmPassword,
                  icon:const Icon(Icons.email_outlined),
                ),
              ),
              checkboxListTile(Text("Accet all")),
              checkboxListTile(Text('Receive promotional emails or SMS (Option)')),
            ],
          ),
        ),
      ),
    );
  }

  CheckboxListTile checkboxListTile(text) {
    bool checkValue = false;
    final ValueChanged<bool> onChanged;
    return CheckboxListTile(
      value: checkValue,
      title: text,
      onChanged: (bool? newValue){

      },
    );
}
}
