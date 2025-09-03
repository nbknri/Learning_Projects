import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CallTile extends StatelessWidget {
  const CallTile({super.key, required this.name, this.img, required this.vid, required this.isMissed, required this.inComing, required this.time});

  final String name;
  final String? img;
  final int vid;
  final bool isMissed;
  final bool inComing;
  final String time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: img!=null?
      CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(img as String),
        )
        :Icon(
          Icons.account_circle,
          color: Colors.grey.shade500,
          ),
      title: Text(name,
      overflow: TextOverflow.ellipsis,
       style: TextStyle(
        color: Colors.black,
        fontSize: 20,
       ),
       ),
       subtitle: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            inComing?CupertinoIcons.arrow_down_left:CupertinoIcons.arrow_up_right,
            color: isMissed? Colors.red : Color(0xff25d366),
            size: 20,
          ),
          Text(
            time, 
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 15,
            ),
            ),
        ],
       ),
       trailing: Icon(
        vid==1?Icons.videocam_rounded:Icons.call,
        color: Colors.teal,
        size: 29,
       ),
    );
  }
}
