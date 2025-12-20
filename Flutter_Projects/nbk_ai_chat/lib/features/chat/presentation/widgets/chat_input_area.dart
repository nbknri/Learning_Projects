import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nbk_ai_chat/features/chat/presentation/bloc/chat_bloc.dart';

class ChatInputArea extends StatefulWidget {
  const ChatInputArea({super.key});

  @override
  State<ChatInputArea> createState() => _ChatInputAreaState();
}

class _ChatInputAreaState extends State<ChatInputArea> {
  final TextEditingController _controller = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _isButtonEnabled = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      context.read<ChatBloc>().add(ChatEvent.sendMessage(_controller.text));
      _controller.clear();
      setState(() {
        _isButtonEnabled = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: GoogleFonts.notoSans().fontFamily,
              ),
              decoration: InputDecoration(
                hintText: "Type a message...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
          ),
          SizedBox(width: 8),
          IconButton.filled(
            onPressed: _isButtonEnabled ? _sendMessage : null,
            padding: EdgeInsets.all(12),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.blue),
              elevation: _isButtonEnabled
                  ? WidgetStatePropertyAll(4)
                  : WidgetStatePropertyAll(0),
            ),
            highlightColor: _isButtonEnabled ? Colors.blue : Colors.grey[300],
            icon: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
