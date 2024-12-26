part of 'login_bloc.dart';

@immutable
class LoginState extends Equatable {
  const LoginState({
    required this.authenticationStatus,
    this.phoneNumber = const PhoneNumberInput.pure(),
    this.isValid = false,
  });

  final AuthenticationStatus authenticationStatus;
  final PhoneNumberInput phoneNumber;
  final bool isValid;

  LoginState copyWith({
    final AuthenticationStatus? newAuthenticationStatus,
    final FormzSubmissionStatus? submissionStatus,
    final PhoneNumberInput? phoneNumber,
    final bool? isValid,
  }) {
    return LoginState(
      authenticationStatus: newAuthenticationStatus ?? authenticationStatus,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      isValid: isValid ?? this.isValid,
    );
  }

  @override
  List<Object?> get props => [
        authenticationStatus,
        phoneNumber,
      ];
}
