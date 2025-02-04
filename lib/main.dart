import 'dart:io';

import "package:flutter/material.dart";
import 'package:audioplayers/audioplayers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  late VideoPlayerController _controller;
  ImagePicker picker = ImagePicker();
  XFile? image;
  @override 
   void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  Future<void> downloadImage() async {
    image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  Future<void> pickImage() async {
    image = await picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    AudioCache.instance = AudioCache(prefix: "");
    final player = AudioPlayer();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Audio Player"),
      ),
      body: Column(
        children: [
          Text("سورة الكوثر", style: TextStyle(fontSize: 30)),
          const SizedBox(height: 70),
          Row(
            children: [
              const Spacer(),
              ElevatedButton(
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all(10),
                ),
                onPressed: () async {
                  await player.play(AssetSource("assets/sound/108.mp3"));
                },
                child: const Icon(Icons.play_arrow),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(10),
                ),
                onPressed: () async {
                  await player.pause();
                },
                child: Icon(Icons.pause),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(10),
                ),
                onPressed: () async {
                  await player.stop();
                },
                child: Icon(Icons.stop),
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 101,
          ),
          ElevatedButton(
              onPressed: () {
                downloadImage();
              },
              child: Text("download Image")),
          SizedBox(
            height: 10,
          ),
          image == null
              ? Container(
                  child: Text("No Image Selected"),
                )
              : Image.file(
                  File(image!.path),
                  width: 200,
                  height: 200,
                ),
          ElevatedButton(
              onPressed: () {
                pickImage();
              },
              child: Text("pick Image")),
          image == null
              ? Container(
                  child: Text("No Image Selected"),
                )
              : Image.file(File(image!.path), width: 200, height: 200),
              SizedBox(height: 20,)
              ,
              Container(
                child: _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                    : Container(
                        child: Text("No Video Selected"),
                      ),

                    
              ),
              ElevatedButton(onPressed: (){
                _controller.value.isPlaying ? _controller.pause() : _controller.play();
              }, child:Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow) ,)


        ],
      ),
    );
  }
}
