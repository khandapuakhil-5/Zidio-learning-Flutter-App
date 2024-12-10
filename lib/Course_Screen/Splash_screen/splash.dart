import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../LoginFeatures/screens/SignUp.dart';
import '../../constants.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String id = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 200, height: 200,
              child: LottieBuilder.asset('assets/lottie/splash/hamster.json'),
            ),
           kSimpleAnimatedText(),
          ],
        ),
      ),
      bottomSheet: kBottomSheet,
    );
  }
}
class kSimpleAnimatedText extends StatefulWidget {
  @override
  _kSimpleAnimatedTextState createState() => _kSimpleAnimatedTextState();
}
class _kSimpleAnimatedTextState extends State<kSimpleAnimatedText> {
  bool _isLarge = true;
  @override
  void initState() {
    super.initState();
    _startAnimation();
  }
  void _startAnimation() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLarge = !_isLarge;
      });
      _startAnimation();
    });
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      duration: Duration(seconds: 1),
      style: TextStyle(
        fontSize: _isLarge ? 50 : 30,
        color: _isLarge ? Colors.blue : Colors.pink,
        fontWeight: FontWeight.bold,
      ),
      child: const Text("Zidio Learning"),
    );
  }
}