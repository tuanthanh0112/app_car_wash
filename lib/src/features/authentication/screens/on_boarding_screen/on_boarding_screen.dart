import 'package:appcarwash/src/constants/color.dart';
import 'package:appcarwash/src/features/authentication/models/on_boarding_model.dart';
import 'package:appcarwash/src/features/authentication/screens/login/login_email_screen.dart';
// import 'package:appcarwash/src/features/authentication/screens/login/login.dart';
import 'package:appcarwash/src/features/authentication/screens/on_boarding_screen/dialog_screen.dart';
// import 'package:appcarwash/src/features/authentication/screens/on_boarding_screen/show_dialog_check.dart';
import 'package:appcarwash/src/features/authentication/screens/on_boarding_screen/slides.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<BoardingSliderModel> slides = <BoardingSliderModel>[];
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
    slides = getSlides();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'language',
          style: TextStyle(color: tTextColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: (val) {
              setState(() {
                currentIndex = val;
              });
            },
            itemCount: slides.length,
            itemBuilder: (context, index) {
              return Sliders(image: slides[index].getImage());
            },
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                slides.length, (index) => buildDot(index, context)),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.all(40),
            width: double.infinity,
            color: Colors.white70,
            child: TextButton(
              onPressed: () {
                // if (currentIndex == slides.length - 1) {
                // showDialog(context: context,
                //     builder: (context) {
                //       return const DialogScreen();
                //     });
                // }
                if(currentIndex == slides.length - 1){
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginEmailScreen()));
                }
                _controller.nextPage(
                  duration: const Duration(minutes: 10),
                  curve: Curves.bounceIn,
                );
              },
              style: TextButton.styleFrom(
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                backgroundColor: const Color(0xffffffff),
              ),
              child: currentIndex == slides.length - 1 ? buildText('START', Colors.blueAccent) : buildText('NEXT', Colors.black45),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blueAccent,
      ),
    );
  }
  Text buildText(text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color),
    );
  }
}
