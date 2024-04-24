import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeProvider extends Cubit<ThemeMode> {
  ThemeProvider() : super(ThemeMode.light);
  void changeToLightTheme() => emit(ThemeMode.light);
  void changeToDarkTheme() => emit(ThemeMode.dark);
}
