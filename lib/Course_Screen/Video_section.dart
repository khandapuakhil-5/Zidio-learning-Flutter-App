import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  VideoSection({super.key});

  List videoList = [
    "Introduction", "Variables", "Data Types", "Loops", "Arrays", "Class and Objects"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) { 
        return ListTile(
          leading: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: index == 0 ? Colors.pink[700] : Colors.pink[200],
              shape: BoxShape.circle
            ),
            child: const Icon(
              Icons.play_arrow_sharp,
              color: Colors.white,
              size: 27.5,
            ),
          ),
          title: Text(videoList[index],
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17.5,
            ),
          ),
          subtitle: const Text("45 minutes"),
        );
      },

    );
  }
}

