import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naveen_avidi_portfolio/providers/theme_provider.dart';
import 'package:naveen_avidi_portfolio/screens/home_page.dart';
import 'package:naveen_avidi_portfolio/utilities/theme_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const RootWidget();
  }
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<ThemeProvider>(
            create: (BuildContext context) => ThemeProvider(),
          ),
        ],
        child:
            BlocBuilder<ThemeProvider, ThemeMode>(builder: (cont, themeMode) {
          return MaterialApp(
            title: 'Naveen Avidi',
            theme: ThemeHandler.lightTheme,
            darkTheme: ThemeHandler.darkTheme,
            themeMode: themeMode,
            home: const HomePage(),
          );
        }),
      );
}
