import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/downloads/downloads_bloc.dart';
import 'package:netflix_app/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix_app/application/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/domain/core/di/injectable.dart';
import 'package:netflix_app/presentation/main_page/pages/main_page_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<DownloadsBloc>()..add(GetDownloadsImages()),
        ),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(
          create: (context) => getIt<FastLaughBloc>()..add(Initialize()),
        ),
        BlocProvider(
          create: (context) => getIt<NewAndHotBloc>()
            ..add(ComingSoonInitialize())
            ..add(EveryonesInitialize()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backGroundColor,
          textTheme: TextTheme(
            bodySmall: TextStyle(
              color: kWhiteColor,
              fontFamily: googleFontFamily,
            ),
            bodyMedium: TextStyle(
              color: kWhiteColor,
              fontFamily: googleFontFamily,
            ),
            bodyLarge: TextStyle(
              color: kWhiteColor,
              fontFamily: googleFontFamily,
            ),
          ),
          appBarTheme: const AppBarTheme(backgroundColor: kBlackColor),
        ),
        home: MainPageScreen(),
      ),
    );
  }
}
