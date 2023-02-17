import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/colors.dart';

class AppTheme {
  ThemeData get lightTheme => ThemeData(
        colorScheme: ColorScheme(
          primary: AppColors.orangePeel,
          onPrimary: AppColors.black,
          secondary: AppColors.teaGreen,
          onSecondary: AppColors.teaGreen.withOpacity(0.5),
          surface: Colors.grey.withOpacity(0.25),
          onSurface: Colors.grey.withOpacity(0.25),
          background: Colors.white,
          onBackground: Colors.white,
          error: Colors.red,
          onError: Colors.red,
          brightness: Brightness.light,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 32,
          ),
        ),
      );
}
