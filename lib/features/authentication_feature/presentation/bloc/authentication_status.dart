import 'package:equatable/equatable.dart';

abstract class AuthenticationStatus extends Equatable {}

class AuthenticationLoading extends AuthenticationStatus {
  @override
  List<Object?> get props => [];
}

class AuthenticationCompleted extends AuthenticationStatus {
  AuthenticationCompleted(this.status);

  final bool status;

  @override
  List<Object?> get props => [status];
}

class AuthenticationError extends AuthenticationStatus {
  AuthenticationError(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}
