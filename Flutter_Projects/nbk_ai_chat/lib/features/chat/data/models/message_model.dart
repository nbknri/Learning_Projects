import 'package:nbk_ai_chat/features/chat/domain/entities/message.dart';

class MessageModel extends Message {
  MessageModel({
    required super.text,
    required super.isUser,
    required super.timestamp,
  });

  factory MessageModel.fromText(String text, bool isUser) {
    return MessageModel(text: text, isUser: isUser, timestamp: DateTime.now());
  }
}
