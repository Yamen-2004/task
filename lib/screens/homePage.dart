import 'package:aud_vid_player/screens/directMsg.dart';
import 'package:aud_vid_player/screens/notifications.dart';
import 'package:aud_vid_player/widgets/row.dart';
import 'package:aud_vid_player/widgets/story.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Instagram',
                style: GoogleFonts.lobster(
                    textStyle:
                        const TextStyle(color: Colors.white, fontSize: 25)),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  // to notifications message
                  Get.toNamed("/notifications");
                },
                icon: Icon(Icons.notifications),
              ),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                onPressed: () {
                  // to direct message
                  Get.toNamed("/directMessage");

                },
                icon: Icon(Icons.send),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset("assets/sound/images/1.png"),
                  ),
                  const Positioned(
                    bottom: 0,
                    right: 0,
                    child: Icon(
                      Icons.add_circle,
                      color: Colors.blue,
                      size: 24,
                      weight: 20,
                    ),
                  )
                ]),
                const SizedBox(
                  width: 10,
                ),
                const Story(),
                const SizedBox(
                  width: 10,
                ),
                const Story(),
                const SizedBox(
                  width: 10,
                ),
                const Story(),
                const SizedBox(
                  width: 10,
                ),
                const Story(),
                const SizedBox(
                  width: 10,
                ),
                const Story(),
                const SizedBox(
                  width: 10,
                ),
                const Story(),
                const SizedBox(
                  width: 10,
                ),
                const Story(),
                const SizedBox(
                  width: 10,
                ),
                const Story(),
                const SizedBox(
                  width: 10,
                ),
                const Story(),
                const SizedBox(
                  width: 10,
                ),
                const Story(),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const RowHome(),
          Container(
            height: 50,
            padding: const EdgeInsets.all(4),
            child: const Row(
              children: [
                Icon(
                  Icons.heart_broken,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 50,
                  child: Text(
                    "1750",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Icon(
                  Icons.comment,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 50,
                  child: Text(
                    "250",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                Spacer(),
                Icon(
                  Icons.save,
                  color: Colors.white,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: const Text(
              "yammnn__ الحمد لله دائماً وأبداً",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_rounded,
              color: Colors.white,
            ),
            label: 'Profile',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.video_call,
              color: Colors.white,
            ),
            label: 'Profile',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
    ;
  }
}
