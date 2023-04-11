import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/provider/video_provider.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  VideoProvider? vt;
  VideoProvider? vf;

  @override
  Widget build(BuildContext context) {
    vt = Provider.of<VideoProvider>(context, listen: true);
    vf = Provider.of<VideoProvider>(context, listen: false);
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("${vf!.name[index]}"),
      ),
          body: Column(
            children: [
              Container(
                height: 600,
                width: double.infinity,
                child: Chewie(
                  controller: vf!.chewieController!,
                ),
              )
            ],
          ),
        ),
    );
  }
}
