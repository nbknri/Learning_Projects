import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nbk_ai_chat/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:nbk_ai_chat/features/chat/presentation/widgets/chat_bubble.dart';
import 'package:nbk_ai_chat/features/chat/presentation/widgets/chat_input_area.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NBK Ai Assistant'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<ChatBloc, ChatState>(
                builder: (context, state) {
                  if (state.error != null) {
                    return Center(child: Text(state.error!));
                  }
                  return ListView.builder(
                    padding: EdgeInsets.all(16),
                    itemCount: state.messages.length,
                    itemBuilder: (context, index) {
                      final msg = state.messages[index];
                      return ChatBubble(message: msg);
                    },
                  );
                },
              ),
            ),
            BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Padding(
                    padding: EdgeInsets.all(8),
                    child: LinearProgressIndicator(),
                  );
                }
                return SizedBox.shrink();
              },
            ),
            ChatInputArea(),
          ],
        ),
      ),
    );
  }
}
