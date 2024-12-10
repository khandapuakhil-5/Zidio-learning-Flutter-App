import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videoplay extends StatefulWidget {
  Videoplay({super.key});

  final String title = "VideoPlay";

  @override
  State<Videoplay> createState() => _VideoplayState();
}

class _VideoplayState extends State<Videoplay> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          'https://youtu.be/kqtD5dpn9C8?si=C1Rw0bQkKZz2gNd_')!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        loop: true,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.pink[800],
          onReady: () {
            _controller.play();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: CircleAvatar(
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
          radius: 40.0,
          child: Icon(
            _controller.value.isPlaying ? Icons.play_arrow : Icons.pause_outlined,
            size: 27.0,
          ),
        ),
      ),
    );
  }
}
