import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:personal_portfolio/features/home_feature/presentation/bloc/bottom_navigation_cubit.dart';
import 'package:personal_portfolio/features/home_feature/presentation/bloc/theme_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});

  group('Testing all home blocs and cubits', () {
    test('Testing bottom navigation cubit', () {
      final BottomNavigationCubit bottomNavCubit = BottomNavigationCubit();
      expect(bottomNavCubit.state, 0);

      bottomNavCubit.onDestinationSelected(1);
      expect(bottomNavCubit.state, 1);
    });

    test('Testing theme cubit', () {
      final ThemeCubit themeCubit = ThemeCubit();
      expect(themeCubit.state, null);

      themeCubit.toggleTheme();
      expect(themeCubit.state, ThemeMode.light);

      themeCubit.toggleTheme();
      expect(themeCubit.state, ThemeMode.dark);
    });
  });
}
