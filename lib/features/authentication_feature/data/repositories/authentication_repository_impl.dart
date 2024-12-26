import 'package:dio/dio.dart';
import 'package:personal_portfolio/core/resources/data_state.dart';
import 'package:personal_portfolio/core/utils/response_error_handler.dart';
import 'package:personal_portfolio/features/authentication_feature/data/data_sources/local/auth_storage.dart';
import 'package:personal_portfolio/features/authentication_feature/data/data_sources/remote/api_provider.dart';
import 'package:personal_portfolio/features/authentication_feature/data/models/user_model.dart';
import 'package:personal_portfolio/features/authentication_feature/data/models/verify_otp_model.dart';
import 'package:personal_portfolio/features/authentication_feature/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  AuthenticationRepositoryImpl(this.apiProvider);

  AuthenticationApiProvider apiProvider;

  @override
  Future<DataState<bool>> login(final String phone) async {
    try {
      final Response response = await apiProvider.login(
        phone: phone.replaceFirst('0', '98'),
      );

      if (response.statusCode == 200) {
        bool status = false;
        status = response.data['status'];
        return DataSuccess(status);
      } else {
        return DataFailed(responseErrorHandler());
      }
    } catch (e) {
      return DataFailed(responseErrorHandler(error: e));
    }
  }

  @override
  Future<DataState<bool>> verifyOtp(final VerifyOtpModel verifyOtpModel) async {
    try {
      final Response response = await apiProvider.verifyingOtp(verifyOtpModel);
      if (response.statusCode == 200) {
        bool status = false;
        status = response.data['status'];
        if (response.data.toString().contains('Token')) {
          final AuthStorage authStorage = AuthStorage();
          authStorage.saveToken(response.data['data']);
        }
        return DataSuccess(status);
      } else {
        return DataFailed(responseErrorHandler());
      }
    } catch (e) {
      return DataFailed(responseErrorHandler(error: e));
    }
  }

  @override
  Future<DataState<UserModel>> getUserProfile() async {
    try {
      final Response response = await apiProvider.getUserProfile();

      if (response.statusCode == 200) {
        final UserModel userModel = UserModel.fromJson(response.data['data']);
        return DataSuccess(userModel);
      } else {
        return DataFailed(responseErrorHandler());
      }
    } catch (e) {
      return DataFailed(responseErrorHandler(error: e));
    }
  }

  @override
  Future<DataState<bool>> editUserProfile(final UserModel userModel) async {
    try {
      final Response response = await apiProvider.editUserProfile(userModel);

      if (response.statusCode == 200) {
        if (response.data['data'] is Map) {
          return const DataSuccess(false);
        } else {
          return const DataSuccess(true);
        }
      } else {
        return DataFailed(responseErrorHandler());
      }
    } catch (e) {
      return DataFailed(responseErrorHandler(error: e));
    }
  }
}
