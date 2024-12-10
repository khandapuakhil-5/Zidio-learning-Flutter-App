import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../Home_Page/HomeScreen.dart';

class LoginPAge extends StatelessWidget {
  const LoginPAge({super.key});

  static const String id = 'login_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 150.0),
                  TextFormField(
                    onTapOutside: (event) {FocusManager.instance.primaryFocus?.unfocus();},
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1.0, color: Colors.blue),
                          borderRadius: BorderRadius.circular(100.0)
                      ),
                      label: const Text("Email"), prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0,),
                  TextFormField(
                    onTapOutside: (event) {FocusManager.instance.primaryFocus?.unfocus();},
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1.0, color: Colors.blue),
                          borderRadius: BorderRadius.circular(100.0)
                      ),
                      label: const Text("Password"), prefixIcon: const Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0,),
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
                          Navigator.pushNamed(context, Homescreen.id);
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen()));
                        },
                        child: const Text("Log In")
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
      bottomSheet: kBottomSheet
    );
  }
}
