import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/constants.dart';

class AppBarWidget extends StatelessWidget {
  final String titleText;
  const AppBarWidget({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titleText,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        IconButton(onPressed: () {}, icon: Icon(Icons.cast, size: 35)),
        SizedBox(width: 20,),
        Container(height: 27, width: 27, color: Colors.blue),
        sizedBoxWidth,
      ],
    );
  }
}
