import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/components/whatsapp_tab.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  static const String id = 'statusscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: WhatsappTab(label: id),
      ),
      body: Text('Statusssss'),
    );
  }
}