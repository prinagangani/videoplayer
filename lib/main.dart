import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/screens/home/provider/video_provider.dart';
import 'package:videoplayer/screens/home/view/home_screen.dart';
import 'package:videoplayer/screens/video/view/video_screen.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => VideoProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
          'video':(context) => VideoScreen(),
        },
      ),
    ),
  );
}
