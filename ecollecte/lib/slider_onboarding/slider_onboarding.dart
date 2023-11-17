import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter/material.dart';

class SliderOnboarding extends StatefulWidget {
  const SliderOnboarding({super.key});

  @override
  State<SliderOnboarding> createState() => _SliderOnboardingState();
}

class _SliderOnboardingState extends State<SliderOnboarding> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: OnBoardingSlider(
        headerBackgroundColor: Colors.white,
        finishButtonText: 'Register',
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        skipTextButton: Text('Skip'),
        trailing: Text('Login'),
        background: [
          Container(
            height: size.height,
            width: size.width,
            // color: Colors.black,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  // Color(0xff1f005c),
                  // Color(0xff5b0060),
                  // Colors.purple ,
                  //  Colors.purple ,
                  //   Color.fromRGBO(255, 255, 255, 1),
                  //   Color.fromRGBO(255, 226, 5, 1),
                  //   Color.fromRGBO(255, 226, 5, 1),
                  //    Color.fromRGBO(255, 226, 5, 1),
                  //   Color.fromRGBO(255, 226, 5, 1),

                  //    Colors.purple ,
                  const Color.fromARGB(255, 231, 231, 231),
                  const Color.fromARGB(255, 231, 231, 231),
                  // Color(0xff870160),
                  // Color(0xffac255e),
                  // Color(0xffca485c),
                  // Color(0xffe16b5c),
                  // Color(0xfff39060),
                  // Color(0xffffb56b),
                ], // Gradient from https://learnui.design/tools/gradient-generator.html
                tileMode: TileMode.decal,
              ),
            ),

            child: Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                child: Image.asset(
                  'assets/images_pdg/pexels-andrea-piacquadio-874158.jpg',
                  //  fit: BoxFit.cover,
                  // fit: BoxFit.fitHeight,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Image.asset('assets/images_pdg/pexels-pixabay-220453.jpg'),
        ],
        totalPage: 2,
        speed: 1.8,
        pageBodies: [
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 350,
                ),
                Text('Description Text 1'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Description Text 2'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
