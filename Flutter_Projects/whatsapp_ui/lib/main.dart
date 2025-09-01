import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/call_screen.dart';
import 'package:whatsapp_ui/screens/chat_screen.dart';
import 'package:whatsapp_ui/screens/status_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ChatScreen.id,
      routes: {
        ChatScreen.id:(context) => ChatScreen(),
        StatusScreen.id:(context)=> StatusScreen(),
        CallScreen.id:(context)=> CallScreen(),
      },
    );
  }
}
