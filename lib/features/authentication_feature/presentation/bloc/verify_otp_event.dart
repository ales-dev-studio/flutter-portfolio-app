part of 'verify_otp_bloc.dart';

@immutable
abstract class VerifyOtpEvent {}

class VerifyOtpChangedEvent extends VerifyOtpEvent {
  VerifyOtpChangedEvent(this.otp, this.mobileNumber);

  final String? otp;
  final String? mobileNumber;
}
