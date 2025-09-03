import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/components/whatsapp_tab.dart';
import '../whatsapp_data.dart';
import './components/call_tile.dart';
import '../screens/components/divider.dart';

Data callList = Data();

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
      floatingActionButton: Container(
        color: null,
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            backgroundColor: Color(0xff25d366),
            onPressed: () {},
            child: Icon(Icons.add_call, color: Colors.white, size: 20),
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => CallTile(
          name: callList.calls.values.elementAt(index).elementAt(0) as String,
          img: callList.calls.values.elementAt(index).elementAt(1) as String,
          vid: callList.calls.values.elementAt(index).elementAt(2) as int,
          isMissed: callList.calls.values.elementAt(index).elementAt(3) as bool,
          inComing: callList.calls.values.elementAt(index).elementAt(4) as bool,
          time: callList.calls.values.elementAt(index).elementAt(5) as String,
        ),
        separatorBuilder: (context, index) =>
            callList.calls.values.elementAt(index).elementAt(6) as bool
            ? SizedBox(height: 10)
            : CustomDivider(),
        itemCount: callList.calls.length,
      ),
    );
  }
}
