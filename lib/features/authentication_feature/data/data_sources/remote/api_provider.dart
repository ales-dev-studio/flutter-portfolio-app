import 'package:dio/dio.dart';
import 'package:personal_portfolio/core/routes/apis_routes.dart';
import 'package:personal_portfolio/core/utils/general_api.dart';
import 'package:personal_portfolio/features/authentication_feature/data/data_sources/local/auth_storage.dart';
import 'package:personal_portfolio/features/authentication_feature/data/models/user_model.dart';
import 'package:personal_portfolio/features/authentication_feature/data/models/verify_otp_model.dart';

class AuthenticationApiProvider {
  final AuthStorage _authStorage = AuthStorage();

  Future<Response> login({final String? phone}) async {
    final Response result = await generalApiHandler(
      method: 'post',
      url: Routes.USER_OTP,
      handleNetworkError: true,
      data: {
        'phone_number': phone,
      },
      isLogin: true,
    );
    return result;
  }

  Future<Response> verifyingOtp(final VerifyOtpModel verifyOtpModel) async {
    final Response result = await generalApiHandler(
      method: 'post',
      url: Routes.USER_OTP,
      handleNetworkError: true,
      data: verifyOtpModel.toJson(),
    );
    return result;
  }

  Future<bool> logout() async {
    await generalApiHandler(
      method: 'get',
      url: Routes.LOGOUT,
      handleNetworkError: true,
      header: {'Authorization': await _authStorage.getToken()},
    );
    _authStorage.clearToken();
    return true;
  }

  Future<Response> getUserProfile() async {
    final Response result = await generalApiHandler(
      method: 'get',
      url: Routes.USER_PROFILE,
      header: {'Authorization': await _authStorage.getToken()},
    );
    return result;
  }

  Future<Response> editUserProfile(final UserModel userModel) async {
    final Response result = await generalApiHandler(
      method: 'post',
      url: Routes.USER_PROFILE,
      header: {'Authorization': await _authStorage.getToken()},
      data: userModel.toJson(),
    );
    return result;
  }
}
