import 'dart:convert';

class VerifyOtpModel {

  VerifyOtpModel({
    required this.phoneNumber,
    required this.otp,
    this.appOtp,
  });
  String phoneNumber;
  String otp;
  bool? appOtp;

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
    'phone_number': phoneNumber,
    'otp': otp,
  };
}
