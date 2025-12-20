import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nbk_ai_chat/features/chat/domain/entities/message.dart';
import 'package:nbk_ai_chat/features/chat/domain/usecases/send_message.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final SendMessage sendMessageUseCases;

  ChatBloc(this.sendMessageUseCases) : super(ChatState()) {
    on<_SendMessage>((event, emit) async {
      final userMessage = Message(
        text: event.text,
        isUser: true,
        timestamp: DateTime.now(),
      );

      List<Message> newMessages = List.from(state.messages)..add(userMessage);

      emit(state.copyWith(messages: newMessages, isLoading: true, error: null));

      try {
        final aiMessage = await sendMessageUseCases(event.text);
        newMessages = List.from(state.messages)..add(aiMessage);

        emit(state.copyWith(messages: newMessages, isLoading: false));
      } catch (e) {
        print("REAL ERROR: $e");
        emit(
          state.copyWith(
            isLoading: false,
            error: "Something went wrong! Try again.",
          ),
        );
      }
    });
  }
}
