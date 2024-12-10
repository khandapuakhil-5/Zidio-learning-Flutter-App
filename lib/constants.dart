import 'package:flutter/material.dart';
const kBlackColor = Color(0xFF101010);
const kSecondaryColor = Color(0xFF8B94BC);
const kGreenColor = Color(0xFF6AC259);
final kBottomSheet =  Text("Created and Develped by Yagamoorthi",
  style: TextStyle(
    fontSize: 10.0, fontWeight: FontWeight.w300, color: Colors.black.withOpacity(0.7),
  ),
); const kredColor = Color(0xFFE92E30);
const kRedColor = Color(0xFFE92E30);
const kGrayColor = Color(0xFFC1C1C1);
const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const double kDefaultPadding = 20.0;

class SimpleAnimatedText extends StatefulWidget {
  @override
  _SimpleAnimatedTextState createState() => _SimpleAnimatedTextState();
}
class _SimpleAnimatedTextState extends State<SimpleAnimatedText> {
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
      child: Text("Welcome!!"),
    );
  }
}