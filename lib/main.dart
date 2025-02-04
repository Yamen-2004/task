import 'package:aud_vid_player/screens/directMsg.dart';
import 'package:aud_vid_player/screens/homePage.dart';
import 'package:aud_vid_player/screens/notifications.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  runApp(const HomeScreenApp());
}

class HomeScreenApp extends StatelessWidget {
  const HomeScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
       debugShowCheckedModeBanner: false,
       home: Homepage(),
     getPages: [
      GetPage(name: "/notifications", page: () => Notifications()),
      GetPage(name: "/directMessage", page: () => directMsg()),


     ],
    );
  }
}

