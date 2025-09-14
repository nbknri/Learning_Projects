import 'dart:developer';
import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/suggestion_card.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text(
              'People You May Know',
              style: TextStyle(
                color: Colors.black,
                ),
            ),
            trailing: IconButton(
              onPressed: () {
                log('Suggetion more button pressed!');
              },
              icon: Icon(
                Icons.more_horiz, 
                color: Colors.grey[700],
                ),
            ),
          ),
          SizedBox(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  avathar: nivipauly, 
                  name: 'Nivinpauly', 
                  mutualFriend: 5,
                  ),
                  SuggestionCard(
                  avathar: dileep,
                  name: 'Dileep',
                  mutualFriend: 8,
                ),
                SuggestionCard(
                  avathar: bijumenon,
                  name: 'Bijumenon',
                  mutualFriend: 10,
                ),
                SuggestionCard(
                  avathar: fahad, 
                  name: 'Fahad', 
                  mutualFriend: 3,
                  ),
              ],
            ),
          ),          
        ],
      ),
    );
  }
}
