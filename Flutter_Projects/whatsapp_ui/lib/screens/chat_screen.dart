import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/components/chat_tile.dart';
import 'package:whatsapp_ui/screens/components/divider.dart';
import 'package:whatsapp_ui/screens/components/whatsapp_tab.dart';
import 'package:whatsapp_ui/whatsapp_data.dart';

Data data = Data();

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  static const String id = 'chatscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: WhatsappTab(label: id),
      ),
        
      floatingActionButton: Container(
        color: null,
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            backgroundColor: Color(0xff25D366),
            child: Icon(Icons.message, color: Colors.white),
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ChatTile(
          name: data.chat.values.elementAt(index).elementAt(0), 
          img: data.chat.values.elementAt(index).elementAt(1), 
          msg: data.chat.values.elementAt(index).elementAt(2), 
          time: data.chat.values.elementAt(index).elementAt(3),
          ),
        separatorBuilder: (context, index) => CustomDivider(),
        itemCount: data.chat.length,
      ),
    );
  }
}
