import 'dart:convert';

import 'package:flutter/material.dart';

import '../../constants.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({super.key});

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List videoInfo=[];
  _initData() async{
    await DefaultAssetBundle.of(context).loadString("assets/json/videoinfo.json").then((value){
      videoInfo = json.decode(value);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomSheet(),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: videoInfo.length,
              itemBuilder: (_, int index){
                return GestureDetector(
                  onTap: () {
                    debugPrint(index.toString());
                  },
                  child: Container(
                    color: Colors.red,
                    height: 100.0,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 80.0, height: 80.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.pink,
                                image: DecorationImage(
                                  image: AssetImage(
                                      videoInfo[index]["thumnail"]
                                  ),
                                )
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              })
          ),
        ],
      ),
    );
  }
}

Text BottomSheet() {
  return kBottomSheet;
}