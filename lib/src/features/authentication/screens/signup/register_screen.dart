import 'package:appcarwash/src/constants/text_string.dart';
import 'package:appcarwash/src/features/authentication/screens/login/component/custom_textfiled.dart';
import 'package:flutter/material.dart';




class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});


  @override
  Widget build(BuildContext context) {

    bool checkValue = false;

    TextEditingController _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title:const Text('Create Account', style: TextStyle(color: Colors.blueAccent, fontSize: 16),),
        backgroundColor: Colors.white,
        // automaticallyImplyLeading: true,
        leading: Navigator.canPop(context)
            ? IconButton(icon:const Icon(
            Icons.arrow_back,
            color: Colors.blueAccent,
            size: 30,
          ),
          onPressed: () => Navigator.of(context).pop(),
        )
            : null,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: DefultTextLaple(
                  lableText: tEmail,
                  hinttext: tEmail,
                  controller:_controller ,
                  icon: Icon(Icons.add),
                ),
              ),
              Container(
                child: DefultTextLaple(
                  controller:_controller ,
                  lableText: tPassword,
                  hinttext: tPassword,
                  icon:const Icon(Icons.add),
                ),
              ),
              Container(
                child: DefultTextLaple(
                  controller:_controller ,
                  lableText: tConfirmPassword,
                  hinttext: tConfirmPassword,
                  icon:const Icon(Icons.add),
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Checkbox(
                    value: checkValue,
                    onChanged: (val){},
                  ),
                  const Text('Accept all', style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
             const Padding(padding: EdgeInsets.all(15), child: Divider(height: 10,),),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.black12,
                    value: checkValue,
                    onChanged: (val){},
                  ),
                  TextButton(
                      onPressed: (){},
                      child: const Text('I agree to the terms of service. (required)', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black12),),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: checkValue,
                    onChanged: (val){},
                  ),
                  const Text('Recevie promotional emails or SMS (Option)', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black12),)
                ],
              ),
            ],

          ),
        ),
      ),
      floatingActionButton: TextButton(
        child:const Align(
          alignment: Alignment.bottomCenter,
            child: Text('Next'),
        ),
        onPressed: (){},
      ),
    );
  }
}

