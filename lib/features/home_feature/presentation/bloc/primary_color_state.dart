part of 'primary_color_cubit.dart';

class PrimaryColorState {
  PrimaryColorState({
    required this.primaryColor,
    required this.lightPrimaryColor,
  });

  final Color primaryColor;
  final Color lightPrimaryColor;

  PrimaryColorState copyWith({
    final Color? primaryColor,
    final Color? lightPrimaryColor,
  }) {
    return PrimaryColorState(
      primaryColor: primaryColor ?? this.primaryColor,
      lightPrimaryColor: lightPrimaryColor ?? this.lightPrimaryColor,
    );
  }
}
