import "package:aud_vid_player/screens/notifications.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class directMsg extends StatelessWidget {
  const directMsg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.red,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("go to notifications")),
        ),
      ),
    );
  }
}
