import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key, this.name, this.img, this.msg, this.time});

  final String? name;
  final String? img;
  final String? msg;
  final String? time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        
      },
      leading: img!=null?
      Padding(padding: EdgeInsets.only(right: 8.0,),
      child: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(img!),
      ),
      ):Padding(
        padding: EdgeInsets.only(
          right: 8.0
          ),
      child: Icon(
        Icons.account_circle, 
        size: 50,
        color: Colors.grey.shade500,
        ),
      ),
      minVerticalPadding: 0,
      horizontalTitleGap: 5,
      trailing: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          time!,
          style: TextStyle(
            color: Colors.grey.shade500,
          ),
        ),
        ),
        title: Text(name!, 
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 19,
          color: Colors.black
        ),
        ),
        subtitle: Text(msg!,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.grey.shade500,
          fontSize: 15,
        ),
        ),
    );
  }
}
