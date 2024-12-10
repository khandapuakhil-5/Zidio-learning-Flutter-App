import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../constants.dart';
import 'Description_section.dart';
import 'Video_Player/VideoPlay.dart';
import 'Video_section.dart';

class Coursescreen extends StatefulWidget {
  static const String id = 'course_screen';
  //Coursescreen({super.key});
  String txt;
  Coursescreen(this.txt, {super.key});

  @override
  State<Coursescreen> createState() => _CoursescreenState();
}

class _CoursescreenState extends State<Coursescreen> {

  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(
        Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'));
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(10.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool isVideoSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20.0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink[400],
        centerTitle: true,
        title: Text(widget.txt, // NEED TO CHANGE !!
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 18.5,
            wordSpacing: 1.5,
            letterSpacing: 1.25,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.notifications_sharp,
              size: 25.0,
              color: Colors.white,
            ),
            
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(6.0),
              width: 210.0,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.pink[50],
                image: DecorationImage(
                  image: AssetImage('assets/images/${widget.txt}.png')
                ),
              ),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                    color: Colors.black87,
                    shape: BoxShape.circle,
                  ),



                  child: Videoplay(),



                ),
              ),
            ),
            const SizedBox(height: 8.0,),
            Text("${widget.txt} - a Complete Course ",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22.5,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            const SizedBox(height: 4.0,),
            Text("                          - created by Yagamoorthi ",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15.5,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            const SizedBox(height: 8.0,),
            Text("12 - Videos",
              style: TextStyle(
                fontSize: 15.5,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 14.0,),


            Container(
              padding: const EdgeInsets.symmetric(vertical: 12.5, horizontal: 8.0),
              decoration: BoxDecoration(
                color: Colors.pink[50],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: isVideoSelected ? Colors.blue : Colors.blue.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(12.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideoSelected = true;
                        });

                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.5),
                        child: const Text("Videos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isVideoSelected ? Colors.blue.withOpacity(0.6) : Colors.blue,
                    borderRadius: BorderRadius.circular(12.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideoSelected = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.5),
                        child: const Text("Description",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // VIDEO AND DESCRIPTION
            const SizedBox(height: 8.0,),
            isVideoSelected ? VideoSection() : DescriptionSection(),


          ],
        ),


      ),

      bottomSheet: kBottomSheet,

    );
  }
}
