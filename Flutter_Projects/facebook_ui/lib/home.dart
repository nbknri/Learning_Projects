import 'dart:developer';
import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/sections/button_section.dart';
import 'package:facebook_ui/sections/room_section.dart';
import 'package:facebook_ui/sections/status_section.dart';
import 'package:facebook_ui/sections/story_section.dart';
import 'package:facebook_ui/sections/suggestion_section.dart';
import 'package:facebook_ui/widgets/circlular_button.dart';
import 'package:facebook_ui/widgets/header_button.dart';
import 'package:facebook_ui/widgets/post_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(thickness: 1, color: Colors.grey[300]);

    Widget thickDivider = Divider(thickness: 10, color: Colors.grey[300]);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'facebook',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          CircluarButton(
            buttonIcon: Icons.search,
            buttonAction: () {
              log('Search button apears!');
            },
          ),
          CircluarButton(
            buttonIcon: Icons.chat,
            buttonAction: () {
              log('Messenger button appears!');
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          StatusSection(),
          thinDivider,
          ButtonSection(
            buttonOne: headerButton(
              buttonIcon: Icons.video_call,
              iconColor: Colors.red,
              labelText: 'Live',
              buttonAction: () {
                log("Go Love!");
              },
            ),
            buttonTwo: headerButton(
              buttonIcon: Icons.photo_library,
              iconColor: Colors.green,
              labelText: 'Photo',
              buttonAction: () {
                log("Take Photo!");
              },
            ),
            buttonThree: headerButton(
              buttonIcon: Icons.video_call,
              iconColor: Colors.purple,
              labelText: 'Live',
              buttonAction: () {
                log("Go to Room!");
              },
            ),
          ),
          thickDivider,
          RoomSection(),
          thickDivider,
          StorySection(),
          thickDivider,
          PostCard(
            profileAvathar: mohanlal,
            profileName: 'Mohanlal',
            publishedAt: '5h',
            postTitle: 'Happy Birthday Ichakka',
            postImage: ichakkabirthday,
            verifiedUser: true,
            likeCount: "10K",
            commentCount: "1K",
            shareCount: "1K",
          ),
          thickDivider,
          PostCard(
            profileAvathar: mammotty,
            profileName: 'Mammotty',
            publishedAt: '1d',
            postTitle: '',
            postImage: lokahmoothon,
            verifiedUser: true,
            likeCount: "50K",
            commentCount: "5K",
            shareCount: "8K",
          ),
          thickDivider,
          SuggestionSection(),
          thickDivider,
          PostCard(
            profileAvathar: prithviraj,
            profileName: 'Prithviraj',
            publishedAt: '27 Nov',
            postTitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis congue libero vel lobortis. Nulla sodales ligula eget ultricies malesuada. Nunc tortor ex, luctus sit amet maximus in, ullamcorper a odio. Nullam elementum quam nec sapien dignissim, eu fringilla velit posuere.',
            postImage: odumkuthira,
            verifiedUser: true,
            likeCount: "80K",
            commentCount: "4K",
            shareCount: "25K",
          ),
          thickDivider,
          PostCard(
            profileAvathar: asifali,
            profileName: 'Asifali Fans',
            publishedAt: '10 Feb',
            postTitle: '',
            postImage: happybirthdayMammotty,
            verifiedUser: false,
            likeCount: "2.5K",
            commentCount: "1K",
            shareCount: "2K",
          ),
          thickDivider,
          PostCard(
            profileAvathar: jayaram,
            profileName: 'Jayaram',
            publishedAt: '6 Mar',
            postTitle: '',
            postImage: kallan,
            verifiedUser: true,
            likeCount: "3.5K",
            commentCount: "2K",
            shareCount: "2.5K",
          ),
          thickDivider,
          PostCard(
            profileAvathar: asifali,
            profileName: 'Asifali',
            publishedAt: '9 h',
            postTitle: '',
            postImage: mirage,
            verifiedUser: true,
            likeCount: "4K",
            commentCount: "200",
            shareCount: "6.5K",
          ),
          thickDivider,
          PostCard(
            profileAvathar: dulquer,
            profileName: 'Dulquer',
            publishedAt: '1 h',
            postTitle: '',
            postImage: groupphoto,
            verifiedUser: true,
            likeCount: "15K",
            commentCount: "50K",
            shareCount: "80.50K",
          ),
          thickDivider,
          PostCard(
            profileAvathar: jayaram,
            profileName: 'Jayaram',
            publishedAt: '1 Apr',
            postTitle: '',
            postImage: teaser,
            verifiedUser: true,
            likeCount: "2K",
            commentCount: "10K",
            shareCount: "6K",
          ),
        ],
      ),
    );
  }
}
