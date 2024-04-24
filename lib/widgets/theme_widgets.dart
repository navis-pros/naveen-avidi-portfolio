import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naveen_avidi_portfolio/providers/theme_provider.dart';

class ThemeWidget extends StatelessWidget {
  const ThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeProvider, ThemeMode>(builder: (con, mode) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              con.read<ThemeProvider>().changeToLightTheme();
            },
            iconSize: 17,
            icon: Icon(
              Icons.light_mode,
              color: mode == ThemeMode.light ? Colors.white : Colors.black,
            ),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              con.read<ThemeProvider>().changeToDarkTheme();
            },
            iconSize: 17,
            icon: Icon(
              Icons.dark_mode,
              color: mode == ThemeMode.dark ? Colors.white : Colors.black,
            ),
          ),
        ],
      );
    });
  }
}
