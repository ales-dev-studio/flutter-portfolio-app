part of 'verify_otp_bloc.dart';

class VerifyOtpState extends Equatable {
  VerifyOtpState({
    required this.authenticationStatus,
    this.otp,
    this.mobileNumber,
  });

  final AuthenticationStatus authenticationStatus;
  final String? otp;
  final String? mobileNumber;

  VerifyOtpState copyWith({
    final AuthenticationStatus? newAuthenticationStatus,
    final String? otp,
    final String? mobileNumber,
  }) {
    return VerifyOtpState(
      authenticationStatus: newAuthenticationStatus ?? authenticationStatus,
      otp: otp,
      mobileNumber: mobileNumber,
    );
  }

  @override
  List<Object?> get props => [
        authenticationStatus,
        otp,
        mobileNumber,
      ];
}
