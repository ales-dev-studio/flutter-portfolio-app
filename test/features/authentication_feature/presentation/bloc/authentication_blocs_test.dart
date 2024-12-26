import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:personal_portfolio/core/resources/data_state.dart';
import 'package:personal_portfolio/features/authentication_feature/domain/usecases/use_cases.dart';
import 'package:personal_portfolio/features/authentication_feature/presentation/bloc/authentication_status.dart';
import 'package:personal_portfolio/features/authentication_feature/presentation/bloc/login_bloc.dart';
import 'package:personal_portfolio/features/authentication_feature/presentation/bloc/verify_otp_bloc.dart';

import 'authentication_blocs_test.mocks.dart';

@GenerateMocks([LoginUseCase, VerifyOtpUseCase])
void main() {
  group('Testing authentication blocs', () {
    /// Testing login bloc
    final MockLoginUseCase mockLoginUseCase = MockLoginUseCase();
    final LoginBloc loginBloc = LoginBloc(mockLoginUseCase);
    const String phoneNumber = '989120465921';

    when(mockLoginUseCase.call(any)).thenAnswer(
      (final _) async => Future.value(
        const DataSuccess(true),
      ),
    );

    blocTest<LoginBloc, LoginState>(
      'Testing login bloc',
      build: () => loginBloc,
      act: (final bloc) {
        bloc.add(LoginSubmittedEvent(phone: phoneNumber));
      },
      expect: () => <LoginState>[
        LoginState(authenticationStatus: AuthenticationLoading()),
        LoginState(authenticationStatus: AuthenticationCompleted(true)),
        LoginState(authenticationStatus: AuthenticationCompleted(false)),
      ],
    );

    /// Testing verify otp bloc
    final MockVerifyOtpUseCase mockVerifyOtpUseCase = MockVerifyOtpUseCase();
    final VerifyOtpBloc verifyOtpBloc = VerifyOtpBloc(mockVerifyOtpUseCase);

    when(mockVerifyOtpUseCase.call(any)).thenAnswer(
      (final _) async => Future.value(
        const DataSuccess(true),
      ),
    );

    blocTest<VerifyOtpBloc, VerifyOtpState>(
      'Testing verify otp bloc',
      build: () => verifyOtpBloc,
      act: (final bloc) {
        bloc.add(VerifyOtpChangedEvent('123456', phoneNumber));
      },
      expect: () => <VerifyOtpState>[
        VerifyOtpState(
          authenticationStatus: AuthenticationCompleted(false),
          otp: '123456',
        ),
        VerifyOtpState(authenticationStatus: AuthenticationLoading()),
        VerifyOtpState(authenticationStatus: AuthenticationCompleted(true)),
        VerifyOtpState(authenticationStatus: AuthenticationCompleted(false)),
      ],
    );
  });
}
