import "package:aud_vid_player/screens/directMsg.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.off( directMsg());
              },
              child: Text("go to direcet message")),
        ),
      ),
    );
  }
}
