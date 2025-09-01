import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/components/whatsapp_tab.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  static const String id = 'callscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: WhatsappTab(label: id),
      ),
      body: Text('Calls'),
    );
  }
}