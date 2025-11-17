import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/downloads/widgets/button_section.dart';
import 'package:netflix_app/presentation/downloads/widgets/center_section.dart';
import 'package:netflix_app/presentation/downloads/widgets/smart_downloads.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({super.key});

  final List _widgetsList = [
    SmartDownloads(),
    CenterSection(),
    ButtonSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: AppBarWidget(titleText: 'Downloads'),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: EdgeInsets.all(10),
          itemBuilder: (context, index) => _widgetsList[index],
          separatorBuilder: (context, index) => SizedBox(height: 40),
          itemCount: _widgetsList.length,
        ),
      ),
    );
  }
}