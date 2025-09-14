import 'dart:developer';

import 'package:facebook_ui/sections/button_section.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/blue_tick.dart';
import 'package:facebook_ui/widgets/header_button.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.profileAvathar,
    required this.profileName,
    required this.publishedAt,
    required this.postTitle,
    required this.postImage,
    this.verifiedUser = false,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
  });

  final String profileAvathar;
  final String profileName;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool verifiedUser;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: null,
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imagSection(),
          footerSection(),
          Divider(thickness: 1, color: Colors.grey[300]),
          ButtonSection(
            buttonOne: headerButton(
              buttonIcon: Icons.thumb_up_outlined,
              iconColor: Colors.grey,
              labelText: "Like",
              buttonAction: () {
                log("Like button pressed!");
              },
            ),
            buttonTwo: headerButton(
              buttonIcon: Icons.chat_outlined,
              iconColor: Colors.grey,
              labelText: "Comment",
              buttonAction: () {
                log("Comment button pressed!");
              },
            ),
            buttonThree: headerButton(
              buttonIcon: Icons.share_outlined,
              iconColor: Colors.grey,
              labelText: "Share",
              buttonAction: () {
                log("Share button pressed!");
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget imagSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return postTitle.isNotEmpty
        ? Container(
            padding: EdgeInsets.only(bottom: 5, left: 10, right: 10),
            child: Text(
              postTitle,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          )
        : SizedBox();
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.thumb_up, color: Colors.white, size: 10),
                ),
                SizedBox(width: 5),
                displayText(label: likeCount),
              ],
            ),
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                displayText(label: commentCount),
                SizedBox(width: 5),
                displayText(label: 'Comments'),
                SizedBox(width: 10),
                displayText(label: shareCount),
                SizedBox(width: 5),
                displayText(label: 'Shares'),
                Avatar(displayImage: profileAvathar, imageSize: 25),
                IconButton(
                  onPressed: () {
                    log('Drop down button pressed');
                  },
                  icon: Icon(Icons.arrow_drop_down, color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(label, style: TextStyle(color: Colors.grey[700]));
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: profileAvathar),
      title: Row(
        children: [
          Text(profileName, style: TextStyle(color: Colors.black)),
          SizedBox(width: 10),
          verifiedUser ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt),
          SizedBox(width: 10),
          Icon(Icons.public, color: Colors.grey[700], size: 15),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          log('More button pressed!');
        },
        icon: Icon(Icons.more_horiz, color: Colors.grey[700]),
      ),
    );
  }
}
