part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginSubmittedEvent extends LoginEvent {

  LoginSubmittedEvent({required this.phone});
  final String phone;
}

class LoginPhoneChangedEvent extends LoginEvent {

  LoginPhoneChangedEvent(this.phoneNumber);
  final String phoneNumber;
}
