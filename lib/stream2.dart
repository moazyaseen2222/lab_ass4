import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://www.shutterstock.com/shutterstock/videos/1039788188/preview/stock-footage-neon-bright-glowing-countdown-timer-from-to-seconds.webm');
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: _controller.value.aspectRatio,
      autoInitialize: true,
      looping: true,
      autoPlay: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Offloading & Video Streaming'), centerTitle: true),
      body: Chewie(controller: _chewieController),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _chewieController.dispose();
  }
}
