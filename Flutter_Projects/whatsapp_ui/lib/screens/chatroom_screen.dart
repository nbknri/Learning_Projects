import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/components/message_bubble.dart';
import '../whatsapp_data.dart';

Data data = Data();

class ChatroomScreen extends StatefulWidget {
  const ChatroomScreen({super.key, required this.name, this.img});

  final String name;
  final String? img;

  @override
  State<ChatroomScreen> createState() => _ChatroomScreenState();
}

class _ChatroomScreenState extends State<ChatroomScreen> {
  TextEditingController textcotrol = TextEditingController();

  bool currentTextValueStatus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff075e54),
        foregroundColor: Colors.white,
        title: Row(
          children: [
            widget.img != null
                ? CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(widget.img as String),
                  )
                : Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.grey.shade500,
                    ),
                  ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  'Online',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam_rounded, size: 28, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call, size: 28, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, size: 28, color: Colors.white),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: null,
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/chatBG.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return MessageBubble(
                      msg:
                          data.chatMsgs.values.elementAt(index).elementAt(0)
                              as String,
                      isMe:
                          data.chatMsgs.values.elementAt(index).elementAt(1)
                              as bool,
                    );
                  },
                  itemCount: data.chatMsgs.length,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 8.0,
                      top: 8.0,
                      bottom: 8.01,
                      right: 6.0,
                    ),
                    width: MediaQuery.of(context).size.width * 0.84,
                    height: MediaQuery.of(context).size.height * 0.05,
                    padding: EdgeInsets.only(right: 10, left: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3.0),
                          width: MediaQuery.of(context).size.width * 0.55,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: TextField(
                            onChanged: (textValue) {
                              setState(() {
                                if (textValue.trim().isNotEmpty) {
                                  currentTextValueStatus = true;
                                } else {
                                  currentTextValueStatus = false;
                                }
                              });
                            },
                            controller: textcotrol,
                            cursorColor: Colors.teal,
                            style: TextStyle(fontSize: 20, color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type a message...',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 19,
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          CupertinoIcons.paperclip,
                          color: Colors.grey,
                          size: 25,
                        ),
                        SizedBox(width: 5),
                        currentTextValueStatus == false
                            ? Icon(
                                Icons.camera_alt_rounded,
                                color: Colors.grey.shade500,
                                size: 27,
                              )
                            : Container(),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xff00897b),
                    radius: 23,
                    child: currentTextValueStatus == false
                        ? IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.mic, color: Colors.white),
                          )
                        : IconButton(
                            onPressed: () {
                              data.chatMsgs[data.chatMsgs.length] = [
                                textcotrol.text,
                                true,
                              ];
                              textcotrol.clear();
                              setState(() {});
                            },
                            icon: Icon(Icons.send_rounded, color: Colors.white),
                          ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textcotrol.dispose();
    super.dispose();
  }
}
