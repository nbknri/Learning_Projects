import 'package:nbk_ai_chat/features/chat/domain/entities/message.dart';
import 'package:nbk_ai_chat/features/chat/domain/repositories/chat_repository.dart';

class SendMessage {
  final ChatRepository chatRepository;

  SendMessage(this.chatRepository);

  Future<Message> call(String text) async {
    return await chatRepository.sendMessage(text);
  }
}