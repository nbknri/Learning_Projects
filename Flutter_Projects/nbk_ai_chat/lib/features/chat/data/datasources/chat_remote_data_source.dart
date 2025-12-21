import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nbk_ai_chat/features/chat/data/models/message_model.dart';

abstract class ChatRemoteDataSource {
  Future<MessageModel> generateResponse(String prompt);
}

@LazySingleton(as: ChatRemoteDataSource)
class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  final Dio dio;

  ChatRemoteDataSourceImpl(this.dio);

  @override
  Future<MessageModel> generateResponse(String prompt) async {
    try {
      final response = await dio.post(
        '/chat/completions',
        data: {
          "model": "llama-3.3-70b-versatile",
          "messages": [
            {"role": "user", "content": prompt},
          ],
        },
      );

      if (response.statusCode == 200) {
        // 1. Let's first print the data (String/Map) we got.
        final dynamic rawData = response.data;
        print("🔍 SERVER DATA TYPE: ${rawData.runtimeType}");

        Map<String, dynamic> jsonMap;

        // 2. Converting the data into a Map (in whatever form it comes in)
        if (rawData is String) {
          jsonMap = jsonDecode(rawData);
        } else if (rawData is Map) {
          // Sometimes Map<dynamic, dynamic>, which is converted to Map<String, dynamic>
          jsonMap = Map<String, dynamic>.from(rawData);
        } else {
          throw Exception("Unknown Data Type Received");
        }

        // 3. Checking for 'choices'
        if (jsonMap.containsKey('choices')) {
          final choicesList = jsonMap['choices'];

          if (choicesList is List && choicesList.isNotEmpty) {
            final firstChoice = choicesList[0];
            final message = firstChoice['message'];
            final content = message['content'];

            return MessageModel.fromText(content.toString(), false);
          }
        }

        // 4. If an error is hit here, it will print what was received.
        print("⚠️ PARSING FAILED. DATA: $jsonMap");
        throw Exception("No content in response");
      } else {
        throw Exception('Server Error: ${response.statusCode}');
      }
    } catch (e) {
      print("🔥 EXCEPTION: $e");
      throw Exception("Failed to get response: $e");
    }
  }
}
