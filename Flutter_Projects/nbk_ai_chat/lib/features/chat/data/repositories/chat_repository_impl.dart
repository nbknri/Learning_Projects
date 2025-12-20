import 'package:injectable/injectable.dart';
import 'package:nbk_ai_chat/features/chat/data/datasources/chat_remote_data_source.dart';
import 'package:nbk_ai_chat/features/chat/domain/entities/message.dart';
import 'package:nbk_ai_chat/features/chat/domain/repositories/chat_repository.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteDataSource remoteDataSource;

  ChatRepositoryImpl(this.remoteDataSource);

  @override
  Future<Message> sendMessage(String text) async {
    final messageModel = await remoteDataSource.generateResponse(text);

    return messageModel;
  }
}
