import 'package:flutter/material.dart';

import '../../constants.dart';
import 'ViewPdf.dart';
import 'files.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20.0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink[400],
        centerTitle: true,
        title: const Text("Resourse Store", //
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
      body: GridView.builder(
        itemCount: pdf.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            childAspectRatio: 15/14,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 20.0,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PdfView(index: index)));
              },
              child: Card(
                child: Container(
                  color: Colors.pink[50],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 80.0,
                        child: Image.asset('assets/store/study.png', fit: BoxFit.cover,),
                      ),
                      const SizedBox(height: 18.0,),
                      Center(
                        child: Text(name[index], textAlign: TextAlign.center,),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
