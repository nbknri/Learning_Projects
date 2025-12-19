import 'package:nbk_ai_chat/features/chat/domain/entities/message.dart';

abstract class ChatRepository {
  Future<Message> sendMessage(String message);
}