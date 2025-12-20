import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nbk_ai_chat/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:nbk_ai_chat/features/chat/presentation/pages/chat_page.dart';
import 'package:nbk_ai_chat/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => di.getIt<ChatBloc>())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NBK Ai Chat',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          textTheme: GoogleFonts.notoSansTextTheme(),
        ),
        home: ChatPage(),
      ),
    );
  }
}
