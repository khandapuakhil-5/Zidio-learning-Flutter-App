import 'package:flutter/material.dart';

import '../../Course_Screen/LoginFeatures/screens/widget/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
          body: SignupFormWidget(),
        )
    ); //9.55
  }
}
