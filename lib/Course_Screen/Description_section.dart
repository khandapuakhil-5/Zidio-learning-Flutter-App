import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 19.5, left: 8.0, right: 8.0),
      child: Column(
        children: [
          Text("As outlined in our application form, training and learning platform access is required as a commitment to effectively utilize our resources and successfully complete your internship. We invest significantly in our internship.",
            style: TextStyle(
              fontSize: 15.7,
              color: Colors.black.withOpacity(0.8)
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 12.0,),
          Row(
            children: [
              const Text("Course Length :",
                style: TextStyle(
                  fontSize: 15.8,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.timer,
                size: 23.0,
                color: Colors.pink[600],
              ),
              const SizedBox(width: 6.0,),
              const Text("24 hours",
                style: TextStyle(
                  fontSize: 15.8,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),

          const SizedBox(height: 7.0,),
          Row(
            children: [
              const Text("Course Rating ",
                style: TextStyle(
                  fontSize: 15.8,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 6.0,),
              Icon(
                Icons.star,
                size: 24.0,
                color: Colors.yellow[800],
              ),
              const SizedBox(width: 6.0,),
              const Text("3.9",
                style: TextStyle(
                  fontSize: 15.8,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}