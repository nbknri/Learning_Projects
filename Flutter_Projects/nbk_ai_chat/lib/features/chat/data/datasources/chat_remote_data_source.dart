import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:injectable/injectable.dart';
import 'package:nbk_ai_chat/features/chat/data/models/message_model.dart';

abstract class ChatRemoteDataSource {
  Future<MessageModel> generateResponse(String prompt);
}

@LazySingleton(as: ChatRemoteDataSource)
class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  // The generative AI model used to generate responses.
  final GenerativeModel model;
  
  ChatRemoteDataSourceImpl(this.model);

  @override
  Future<MessageModel> generateResponse(String prompt) async {
    final content = [Content.text(prompt)];

    final response = await model.generateContent(content);

    final responseText = response.text ?? "No response from AI";

    return MessageModel.fromText(responseText, false);
  }
}
