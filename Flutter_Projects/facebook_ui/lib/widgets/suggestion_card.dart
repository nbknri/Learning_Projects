import 'dart:developer';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({super.key, required this.avathar, required this.name, required this.mutualFriend});

  final String avathar;
  final String name;
  final int mutualFriend;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(children: [suggestionImage(), suggestionDetails()]),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.grey.shade300, width: 1),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            ListTile(title: Text(name), subtitle: Text('$mutualFriend Mutual frined')),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  addButton(
                    buttonAction: () {
                      log('Add Friend button pressed!');
                    },
                    buttonBgColor: Colors.blueAccent,
                    buttonIcon: Icons.person_add_alt_1,
                    butttonIconColor: Colors.white,
                    buttonText: 'Add Friend',
                    buttonTextColor: Colors.white,
                  ),
                  removeButton(
                    buttonAction: () {
                      log('Remove button pressed!');
                    },
                    buttonText: 'Remove',
                    buttonColor: Colors.grey.shade300,
                    buttonTextColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget removeButton({
    required void Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
  }) {
    return TextButton(
      onPressed: buttonAction,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(buttonColor),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
      child: Text(buttonText, style: TextStyle(color: buttonTextColor)),
    );
  }

  Widget addButton({
    required void Function() buttonAction,
    required Color buttonBgColor,
    required IconData buttonIcon,
    required Color butttonIconColor,
    required String buttonText,
    required Color buttonTextColor,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      label: Text(buttonText, style: TextStyle(color: buttonTextColor)),
      icon: Icon(buttonIcon, color: butttonIconColor),
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(buttonBgColor),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: avathar.isNotEmpty 
        ?Image.asset(avathar, fit: BoxFit.cover, height: 250)
        : SizedBox(),
      ),
    );
  }
}
