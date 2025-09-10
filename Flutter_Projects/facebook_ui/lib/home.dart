import 'dart:developer';
import 'package:facebook_ui/sections/status_section.dart';
import 'package:facebook_ui/widgets/app_bar_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
          AppBarButton(
            buttonIcon: Icons.search,
            buttonAction: () {
              log('Search button apears!');
            },
          ),
          AppBarButton(
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
        ],
      ),
    );
  }
}
