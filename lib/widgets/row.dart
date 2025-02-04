import 'package:aud_vid_player/widgets/story.dart';
import 'package:flutter/material.dart';

class RowHome extends StatelessWidget {
  const RowHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        
        children: [
          Container(
            height: 60,
            child: const Row(
              
              children: [
                Story(),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "yammnn__",
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Text(
                  "...",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.all(4),
              child: Image.asset("assets/sound/images/1.png"))
        ],
      ),
    );
  }
}
