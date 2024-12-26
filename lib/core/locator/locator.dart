import 'package:get_it/get_it.dart';
import 'package:personal_portfolio/features/authentication_feature/data/data_sources/remote/api_provider.dart';
import 'package:personal_portfolio/features/authentication_feature/data/repositories/authentication_repository_impl.dart';
import 'package:personal_portfolio/features/authentication_feature/domain/repositories/authentication_repository.dart';
import 'package:personal_portfolio/features/authentication_feature/domain/usecases/use_cases.dart';
import 'package:personal_portfolio/features/authentication_feature/presentation/bloc/login_bloc.dart';
import 'package:personal_portfolio/features/authentication_feature/presentation/bloc/profile_bloc.dart';
import 'package:personal_portfolio/features/authentication_feature/presentation/bloc/verify_otp_bloc.dart';

GetIt locator = GetIt.instance;

Future<void> setupAuthenticationLocators() async {
  /// register authentication api provider
  locator.registerSingleton<AuthenticationApiProvider>(
    AuthenticationApiProvider(),
  );

  /// register repositories
  locator.registerSingleton<AuthenticationRepository>(
    AuthenticationRepositoryImpl(locator()),
  );

  /// register login use case
  locator.registerSingleton<LoginUseCase>(LoginUseCase(locator()));

  /// register login bloc factory
  locator.registerFactory<LoginBloc>(() => LoginBloc(locator()));

  /// register verify otp use case
  locator.registerSingleton<VerifyOtpUseCase>(VerifyOtpUseCase(locator()));

  /// register verify otp bloc factory
  locator.registerFactory<VerifyOtpBloc>(() => VerifyOtpBloc(locator()));

  /// register profile use case
  locator.registerSingleton<EditUserProfileUseCase>(
    EditUserProfileUseCase(locator()),
  );
  locator.registerSingleton<GetUserProfileUseCase>(
    GetUserProfileUseCase(locator()),
  );

  /// register login bloc factory
  locator.registerFactory<ProfileBloc>(
    () => ProfileBloc(locator(), locator()),
  );
}
