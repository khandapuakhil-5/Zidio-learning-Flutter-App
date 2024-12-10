import 'package:flutter/material.dart';

class MenuIcons extends StatelessWidget {
  const MenuIcons({super.key, required this.title, required this.onPress, required this.imageAsset});
  final String title;
  final String imageAsset;

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          overlayColor: Colors.transparent,
          backgroundColor: Colors.transparent,
        ),
        onPressed: onPress,
        child: Column(
          children: [
          Image.asset(imageAsset, width: 32.0, height: 32.0,),
          Text(title, style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.black),),
          ],
        )
      ),
    );
  }
}
