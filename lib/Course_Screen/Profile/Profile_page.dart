import 'package:flutter/material.dart';
import '../../LoginFeatures/screens/SignUp.dart';
import '../../Profile/profile_widget.dart';
import '../../Profile/updateprofile.dart';
import '../../constants.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink[400],
        title: const Text("Profile",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 18.5,
              wordSpacing: 1.5,
              letterSpacing: 1.25,
            ),
        ),
        centerTitle: true,
        elevation: 20.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon( isDark? Icons.light_mode : Icons.dark_mode),
          ),
        ],
      ),
      bottomSheet: kBottomSheet,
      body: SingleChildScrollView(
        child: Center(
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
                        child: const Icon(Icons.mode_edit_outline_outlined , color: Colors.amber, size: 22.0,),
                      ),
                    ),
                  ],
                ),

                Text("Yagamoorthi", style: Theme.of(context).textTheme.headlineMedium,),
                Text("xyz@gamil.com", style: Theme.of(context).textTheme.bodyMedium,),
                const SizedBox(height: 18.0,),
                SizedBox(
                  width: 128.0,
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
                    child: const Text("Edit Profile",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                    ),
                  ),
                ),
                const SizedBox(height: 18.0,),
                const Divider(),
                const SizedBox(height: 12.0,),



                //MENU
                ProfileMenu(title: 'Setings', icon: Icons.settings,
                  onPress: () {},),
                ProfileMenu(title: 'Purchase Details', icon: Icons.wallet,
                  onPress: () {},),
                ProfileMenu(title: 'Data & Information', icon: Icons.person_search,
                  onPress: () {},),
                const SizedBox(height: 32.0,),
                const Divider(),
                ProfileMenu(title: 'Terms and Conditions', icon: Icons.info_outlined,
                  onPress: () {},),
                ProfileMenu(title: 'Logout',txtColor: Colors.red, endIcon: false , icon: Icons.logout,
                  onPress: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));},
                ),
                const SizedBox(height: 21.5,),
                Text("Version 1.0.0",
                  style: TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w200,),
                ),



              ],
            ),
          ),
        ),
      ),

    );
  }
}





