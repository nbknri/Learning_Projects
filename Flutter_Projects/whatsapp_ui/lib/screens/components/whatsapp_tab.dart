import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WhatsappTab extends StatelessWidget {
  const WhatsappTab({super.key, required this.label});

  final String label;
  final currentTab = '';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xff075e54),
      title: Text('Whatsapp', style: TextStyle(color: Colors.white)),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search, size: 28, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.ellipsis_vertical,
            size: 26,
            color: Colors.white,
          ),
        ),
      ],
      bottom: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff075e54),
        leading: Container(
          color: null,
          child: Icon(
            Icons.camera_alt_rounded,
            color: Colors.white24,
            size: 28,
          ),
        ),
        actions: [
          Container(
            width: 115,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: label == 'chatscreen'
                      ? Colors.white
                      : Colors.transparent,
                  width: 5,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: () {
                      navigationFunction(context, 'chatscreen', label);
                    },
                    child: Text(
                      'CHATS',
                      style: TextStyle(
                        fontSize: 18,
                        color: label == 'chatscreen'
                            ? Colors.white
                            : Colors.white54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 115,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: label == 'statusscreen'
                      ? Colors.white
                      : Colors.transparent,
                  width: 5,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: () {
                      navigationFunction(context, 'statusscreen', label);
                    },
                    child: Text(
                      'STATUS',
                      style: TextStyle(
                        fontSize: 18,
                        color: label == 'statusscreen'
                            ? Colors.white
                            : Colors.white54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 115,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: label == 'callscreen'
                      ? Colors.white
                      : Colors.transparent,
                  width: 5,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: () {
                      navigationFunction(context, 'callscreen', label);
                    },
                    child: Text(
                      'CALLS',
                      style: TextStyle(
                        fontSize: 18,
                        color: label == 'callscreen'
                            ? Colors.white
                            : Colors.white54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void navigationFunction(BuildContext cntx, selectedtab, label) {
  if (selectedtab != label) {
    Navigator.of(cntx).pushNamed(selectedtab);
  } else {
    null;
  }
}
