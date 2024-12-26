import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/theme/colors.dart';
import 'package:personal_portfolio/core/utils/locale_handler.dart';

class AppTheme {
  AppTheme(
    this.context,
    final Color primaryColor,
    final Color lightPrimaryColor,
  ) {
    lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
      ),
      navigationBarTheme: NavigationBarThemeData(
        iconTheme: WidgetStateProperty.resolveWith(
          (final Set<WidgetState> state) {
            if (state.contains(WidgetState.selected)) {
              return IconThemeData(color: AppColors.white);
            }
            return IconThemeData(color: primaryColor);
          },
        ),
      ),
      navigationRailTheme: NavigationRailThemeData(
        selectedIconTheme: IconThemeData(
          color: AppColors.white,
        ),
      ),
      fontFamily: checkEnState(context) ? 'IranYekanX' : 'IranYekanXFaNum',
      textTheme: const TextTheme(
        bodySmall: TextStyle(
          height: 2.0,
        ),
        bodyMedium: TextStyle(
          height: 2.0,
        ),
        bodyLarge: TextStyle(
          height: 2.0,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        toolbarTextStyle: TextStyle(
          fontFamily: checkEnState(context) ? 'IranYekanX' : 'IranYekanXFaNum',
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
    );

    darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: lightPrimaryColor,
        brightness: Brightness.dark,
      ),
      navigationRailTheme: NavigationRailThemeData(
        selectedIconTheme: IconThemeData(
          color: AppColors.white,
        ),
      ),
      fontFamily: checkEnState(context) ? 'IranYekanX' : 'IranYekanXFaNum',
      textTheme: const TextTheme(
        bodySmall: TextStyle(
          height: 2.0,
        ),
        bodyMedium: TextStyle(
          height: 2.0,
        ),
        bodyLarge: TextStyle(
          height: 2.0,
        ),
      ),
      appBarTheme: AppBarTheme(
        toolbarTextStyle: TextStyle(
          fontFamily: checkEnState(context) ? 'IranYekanX' : 'IranYekanXFaNum',
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
    );
  }

  BuildContext context;
  late ThemeData lightTheme;
  late ThemeData darkTheme;
}
