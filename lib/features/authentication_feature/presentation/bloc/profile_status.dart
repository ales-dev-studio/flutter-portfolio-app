import 'package:personal_portfolio/features/authentication_feature/data/models/user_model.dart';

abstract class ProfileStatus {}

class ProfileLoading extends ProfileStatus {}

class ProfileCompleted extends ProfileStatus {

  ProfileCompleted(this.userModel);
  final UserModel userModel;
}

class ProfileError extends ProfileStatus {

  ProfileError(this.message);
  final String message;
}
