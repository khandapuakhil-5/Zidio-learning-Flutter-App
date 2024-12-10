import 'package:flutter/material.dart';

import '../../../Course_Screen/LoginFeatures/screens/widget/login.dart';
import '../../../Course_Screen/Onborading_Screen/OnboardScreen.dart';
import '../../../constants.dart';


class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Form(
              child: Center(
                child: Container(
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        onTapOutside: (event) {FocusManager.instance.primaryFocus?.unfocus();},
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1.0, color: Colors.blue),
                              borderRadius: BorderRadius.circular(100.0)
                          ),

                          label: const Text("Full Name"), prefixIcon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                       SizedBox(height: 24.0,),
                      TextFormField(
                        onTapOutside: (event) {FocusManager.instance.primaryFocus?.unfocus();},
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1.0, color: Colors.blue),
                              borderRadius: BorderRadius.circular(100.0)
                          ),
                          label: const Text("Email"), prefixIcon: const Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                       SizedBox(height: 24.0,),

                      TextFormField(
                        onTapOutside: (event) {FocusManager.instance.primaryFocus?.unfocus();},
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1.0, color: Colors.blue),
                              borderRadius: BorderRadius.circular(100.0)
                          ),
                          label: const Text("Password"), prefixIcon: const Icon(Icons.password),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 18.0,),
                      SizedBox(
                       width: double.infinity,
                        height: 50.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            overlayColor: Colors.blue,
                            backgroundColor: Colors.pink,
                            foregroundColor: Colors.white,
                            shape: const StadiumBorder(),
                            side: BorderSide.none,
                          ),
                            onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
                            },
                            child: const Text("Sign Up")
                        ),
                      ),
                      const SizedBox(height: 16.0,),
                      const Padding(
                        padding: EdgeInsets.only(left: 188.0),
                        child: Text("Already have account?",
                          textAlign: TextAlign.left, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50.0,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              overlayColor: Colors.blue,
                              backgroundColor: Colors.pink[400],
                              foregroundColor: Colors.white,
                              shape: const StadiumBorder(),
                              side: BorderSide.none,
                            ),
                            onPressed: () {

                              Navigator.pushNamed(context, LoginPAge.id);
                            },
                            child: const Text("Log In")
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ),
        ),

      ),
      bottomSheet: kBottomSheet,
    );
  }
}
