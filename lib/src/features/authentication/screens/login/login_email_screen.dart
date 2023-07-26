import 'package:appcarwash/src/constants/image_string.dart';
import 'package:appcarwash/src/constants/text_string.dart';
import 'package:appcarwash/src/features/authentication/screens/login/component/custom_button.dart';
import 'package:appcarwash/src/features/authentication/screens/login/component/custom_textfiled.dart';
import 'package:appcarwash/src/features/authentication/screens/signup/register_screen.dart';
import 'package:appcarwash/src/features/authentication/screens/signup/reset_password.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginEmailScreen extends StatefulWidget {
  const LoginEmailScreen({super.key});

  @override
  State<LoginEmailScreen> createState() => _LoginEmailScreenState();


}

class _LoginEmailScreenState extends State<LoginEmailScreen> {

  bool _isSecurePassword = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isSecurePassword = false;
  }
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(35.0),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(tLogo),
                              )),
                        ),
                        // const Padding(padding: EdgeInsets.all(80.0)),
                        Container(
                          child: DefultTextLaple(
                            lableText: tEmail,
                            icon:const Icon(Icons.email_outlined),
                            controller: _controller,),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: DefultTextLaple(
                            icon:const Icon(Icons.password_rounded),
                            controller: _controller,
                          ),
                        ),
                        Container(child: defultbutton(text: tLogin, press: () {}, color: Colors.black54)),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>const ResetPassword()));
                          },
                          child: const Text(
                            tForgetPassword,
                            style: TextStyle(color: Colors.black45),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10, right: 20),
                                  child: const Divider(
                                    height: 36,
                                  ),
                                )),
                            const Text('OR'),
                            Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10, right: 20),
                                  child: const Divider(
                                    height: 36,
                                  ),
                                )),
                          ],
                        ),
                        defultbutton(
                            text: tSignInWithGoogle,
                            press: () {},
                            color: Colors.blueAccent),
                        defultbutton(text: tSignInWithLine, press: () {}, color: Colors.amber),
                        const SizedBox(height: 70,),
                        TextButton(
                          onPressed: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const RegisterScreen())),
                          child:const Text('Dont have an account? Login'),
                        )
                      ],
                    ),
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
