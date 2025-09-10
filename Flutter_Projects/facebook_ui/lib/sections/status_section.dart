import 'package:facebook_ui/assets.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(tovino, width: 50, height: 50,),
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's on youur mind?",
          hintStyle: TextStyle(
            color: Colors.black,
            ),
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      )
    );
  }
}