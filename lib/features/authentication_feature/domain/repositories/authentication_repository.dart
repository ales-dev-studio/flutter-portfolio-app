import 'package:personal_portfolio/core/resources/data_state.dart';
import 'package:personal_portfolio/features/authentication_feature/data/models/user_model.dart';
import 'package:personal_portfolio/features/authentication_feature/data/models/verify_otp_model.dart';

abstract class AuthenticationRepository {
  Future<DataState<bool>> login(final String phone);

  Future<DataState<bool>> verifyOtp(final VerifyOtpModel verifyOtpModel);

  Future<DataState<UserModel>> getUserProfile();

  Future<DataState<bool>> editUserProfile(final UserModel userModel);
}
