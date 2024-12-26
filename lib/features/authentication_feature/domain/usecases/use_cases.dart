import 'package:personal_portfolio/core/resources/data_state.dart';
import 'package:personal_portfolio/core/use_case/use_case.dart';
import 'package:personal_portfolio/features/authentication_feature/data/models/user_model.dart';
import 'package:personal_portfolio/features/authentication_feature/data/models/verify_otp_model.dart';
import 'package:personal_portfolio/features/authentication_feature/domain/repositories/authentication_repository.dart';

class LoginUseCase extends UseCase<DataState<bool>, String> {

  LoginUseCase(this.authenticationRepository);
  final AuthenticationRepository authenticationRepository;

  @override
  Future<DataState<bool>> call(final String params) {
    return authenticationRepository.login(params);
  }
}

class VerifyOtpUseCase extends UseCase<DataState<bool>, VerifyOtpModel> {

  VerifyOtpUseCase(this.authenticationRepository);
  final AuthenticationRepository authenticationRepository;

  @override
  Future<DataState<bool>> call(final VerifyOtpModel params) {
    return authenticationRepository.verifyOtp(params);
  }
}

class GetUserProfileUseCase extends UseCase<DataState<UserModel>, NoParams> {

  GetUserProfileUseCase(this.authenticationRepository);
  final AuthenticationRepository authenticationRepository;

  @override
  Future<DataState<UserModel>> call(final NoParams params) {
    return authenticationRepository.getUserProfile();
  }
}

class EditUserProfileUseCase extends UseCase<DataState<bool>, UserModel> {

  EditUserProfileUseCase(this.authenticationRepository);
  final AuthenticationRepository authenticationRepository;

  @override
  Future<DataState<bool>> call(final UserModel params) {
    return authenticationRepository.editUserProfile(params);
  }
}
