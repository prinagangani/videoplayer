
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';

class VideoProvider extends ChangeNotifier
{
  ChewieController? chewieController;
  VideoPlayerController? videoPlayerController;


  List videos = [
    "assets/video/apna.mp4",
    "assets/video/kabira.mp4",
    "assets/video/maaan.mp4",
  ];

  List image = [
    "assets/images/apna bana.jpg",
    "assets/images/kabira.jpeg",
    "assets/images/maan.jpeg",
  ];

  List name = [
    "|| Apna Bana Le || ",
    "|| Kabira || ",
    "|| Maan Meri Jaan || ",
  ];

  List movie = [

  ];

  void initVideo(int index)
  {
    videoPlayerController = VideoPlayerController.asset("${videos[index]}");
    videoPlayerController!.initialize();
    chewieController = ChewieController(videoPlayerController: videoPlayerController!,allowFullScreen: true,looping: false,
    );
  }

}