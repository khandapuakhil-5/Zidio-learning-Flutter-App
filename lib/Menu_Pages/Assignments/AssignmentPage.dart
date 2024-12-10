import 'package:flutter/material.dart';

import '../../constants.dart';

class Assignmentpage extends StatelessWidget {
  const Assignmentpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20.0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink[400],
        centerTitle: true,
        title: const Text("Assignmets", //
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 18.5,
            wordSpacing: 1.5,
            letterSpacing: 1.25,
          ),
        ),
      ),
      bottomSheet: kBottomSheet,
      body: Center(
        child: Text("No Assignments Alloted",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Colors.black.withOpacity(0.3)
          ),
        ),
      ),

    );
  }
}
