import 'package:flutter/material.dart';
import '../constants.dart';

class Updateprofile extends StatelessWidget {
  const Updateprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink[400],
        title: const Text("Edit Profile",
          style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontWeight: FontWeight.bold,
            fontSize: 18.5, wordSpacing: 1.5, letterSpacing: 1.25,
          ),
        ),
        centerTitle: true,
        elevation: 20.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_arrow_left_rounded)
        ),
      ),
      bottomSheet: kBottomSheet,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 18.0, left: 16.0, right: 16.0),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                      height: 120,width: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200.0),
                        child: Image.asset('assets/images/img1.jpeg'),
                      )
                  ),
                  Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    child: Container(
                      width: 40.0, height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.black.withOpacity(0.7),
                      ),
                      child: const Icon(Icons.camera_alt_outlined , color: Colors.amber, size: 22.0,),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 48.0,),
              Form(
                  child: Column(
                    children: [
                      TextFormField(
                        onTapOutside: (event) {FocusManager.instance.primaryFocus?.unfocus();},
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0, color: Colors.blue),),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                            label: Text("Name"), prefixIcon: Icon(Icons.person)
                        ),
                      ),
                      const SizedBox(height: 18.0,),
                      TextFormField(
                        onTapOutside: (event) {FocusManager.instance.primaryFocus?.unfocus();},
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0, color: Colors.blue),),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            label: Text("Gamil"), prefixIcon: Icon(Icons.email_outlined)
                        ),
                      ),
                      const SizedBox(height: 18.0,),
                      TextFormField(
                        onTapOutside: (event) {FocusManager.instance.primaryFocus?.unfocus();},
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0, color: Colors.blue),),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            label: Text("Phone No"), prefixIcon: Icon(Icons.phone)
                        ),
                      ),
                      const SizedBox(height: 18.0,),
                      TextFormField(
                        onTapOutside: (event) {FocusManager.instance.primaryFocus?.unfocus();},
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0, color: Colors.blue),),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            label: Text("Password"), prefixIcon: Icon(Icons.password)
                        ),
                      ),
                      const SizedBox(height: 18.0,),
                    ],
                  )
              ),
              const SizedBox(height: 28.0,),
              SizedBox(
                width: 200.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    overlayColor: Colors.blue,
                    backgroundColor: Colors.pink,
                    shape: const StadiumBorder(),
                    side: BorderSide.none,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Updateprofile()));
                  },
                  //onPressed: () => Get.to(() => UpdateProfile()),
                  child: const Text("Update",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
