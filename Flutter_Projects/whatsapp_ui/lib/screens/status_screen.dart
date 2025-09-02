import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/components/status_tiles.dart';
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
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/matthew.jpg'),
                      ),
                      Positioned(
                        left: 30,
                        top: 30,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff25d366),
                          radius: 10,
                          child: Icon(
                            Icons.add, 
                            color: Colors.white, 
                            size: 20,),
                        ),
                        ),
                    ],
                  ),
                  title: Text(
                    'My Status', 
                    style: TextStyle(
                      color: Colors.black, 
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      ),
                      ),
                      subtitle: Text(
                        'Tap to add status update', 
                        style: TextStyle(
                          fontSize: 15, 
                          color: Colors.grey,
                          fontWeight: FontWeight.w600
                          ),
                          ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.grey.shade200,
                padding: EdgeInsets.only(
                  left: 20,
                  top: 10,
                  bottom: 10,
                ),
                child: Text(
                  'Recent updates', 
                  style: TextStyle(
                    color: Colors.black54
                  ),),
              ),
              SizedBox(height: 10,),
              StatusTiles(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.only(
                right: 20, 
                bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey.shade50,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: ImageIcon(
                        AssetImage('images/WApencil.png',),
                      ),
                    ),
                  ],
                ),
                ),
                Padding(
                padding: EdgeInsets.only(right: 20, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff25d366),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.camera_alt, 
                        color: Colors.white, 
                        size: 26,
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}