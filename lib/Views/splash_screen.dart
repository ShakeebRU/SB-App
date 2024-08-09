import 'package:flutter/material.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:widget_and_text_animator/widget_and_text_animator.dart';
import '../utils/splash_services.dart';
import '../utils/utils.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  SplashServices splashServicesVar = SplashServices();
  @override
  void initState() {
    splashServicesVar.islogin(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Utils.foreground,
        body: Center(
          child: Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/2.jpg"),
                    fit: BoxFit.cover)),
            child: Container(
              height: height,
              width: width,
              color: Colors.black.withOpacity(0.5),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // AnimatedTextKit(
                  //   animatedTexts: [
                  //     TypewriterAnimatedText(
                  //       'Pareesa',
                  //       textAlign: TextAlign.center,
                  //       textStyle: TextStyle(
                  //         fontSize: 50.0,
                  //         color: Colors.white,
                  //         fontFamily: GoogleFonts.sedgwickAve().fontFamily,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //       speed: const Duration(milliseconds: 200),
                  //     ),
                  //   ],
                  //   isRepeatingAnimation: false,
                  //   totalRepeatCount: 1,
                  //   pause: const Duration(milliseconds: 100),
                  //   displayFullTextOnTap: true,
                  //   stopPauseOnTap: true,
                  // ),
                  // SizedBox(
                  //   height: height * 0.07,
                  // ),
                  // WidgetAnimator(
                  //     incomingEffect: WidgetTransitionEffects(
                  //         delay: const Duration(milliseconds: 1500),
                  //         offset: const Offset(0, -30),
                  //         curve: Curves.bounceOut,
                  //         duration: const Duration(milliseconds: 900)),
                  //     atRestEffect: WidgetRestingEffects.slide(),
                  //     child: const Icon(
                  //       Icons.directions_bike,
                  //       size: 50,
                  //       color: Colors.white,
                  //     )),
                ],
              )),
            ),
          ),
        ));
  }
}
