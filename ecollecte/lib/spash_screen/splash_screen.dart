import 'package:ecollecte/home_page.dart';
import 'package:ecollecte/slider_onboarding/slider_onboarding.dart';
import 'package:flutter/material.dart';
import 'dart:async';
// import 'splash';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                        const HomePages()
                                                         )
                                       )
         );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset('assets/images_logo/e.png') ,
      // FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}
