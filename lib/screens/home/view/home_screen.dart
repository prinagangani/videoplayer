import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/screens/home/provider/video_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  VideoProvider? vt;
  VideoProvider? vf;

  @override
  Widget build(BuildContext context) {
    vt = Provider.of<VideoProvider>(context, listen: true);
    vf = Provider.of<VideoProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Video PLayer"),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: InkWell(
                    onTap: () {
                      Provider.of<VideoProvider>(context,listen: false).initVideo(index);
                      Navigator.pushNamed(context, 'video',arguments: index);
                    },
                    child: Container(
                      color: Colors.black,
                      height: 180,
                      width: double.infinity,
                      child: Image.asset(
                        "${vf!.image[index]}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Container(
                    height: 70,
                    width: 70,
                    child: Image.asset(
                      "${vf!.image[index]}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text("${vf!.name[index]}",style: TextStyle(color: Colors.white),),
                  trailing: Icon(Icons.more_vert,color: Colors.white,),
                )
              ],
            );
          },
          itemCount: vt!.image.length,
        ),
      ),
    );
  }
}
