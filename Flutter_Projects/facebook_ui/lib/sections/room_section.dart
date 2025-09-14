import 'dart:developer';
import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: null,
      height: 65,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(8),
        children: 
        [createRoomButton(),
        Avatar(displayImage: dulquer, statusIndicator: true,),
        Avatar(displayImage: mohanlal, statusIndicator: true),
        Avatar(displayImage: mammotty, statusIndicator: true),
        Avatar(displayImage: asifali, statusIndicator: true),
        Avatar(displayImage: dileep, statusIndicator: true),
        Avatar(displayImage: prithviraj, statusIndicator: true)
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      color: null,
      child: OutlinedButton.icon(
        onPressed: () {
          log('Create chat room!');
        },
        label: Text('Create \nRoom', style: TextStyle(color: Colors.blue)),
        icon: Icon(Icons.video_call, color: Colors.purple, size: 25),
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(StadiumBorder()),
          side: WidgetStatePropertyAll(BorderSide(color: Colors.blue)),
        ),
      ),
    );
  }
}
