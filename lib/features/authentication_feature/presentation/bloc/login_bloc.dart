import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:personal_portfolio/core/resources/data_state.dart';
import 'package:personal_portfolio/core/utils/form_utils/formz_validation_models/phone_number_input.dart';
import 'package:personal_portfolio/features/authentication_feature/domain/usecases/use_cases.dart';
import 'package:personal_portfolio/features/authentication_feature/presentation/bloc/authentication_status.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this.loginUseCase)
      : super(
          LoginState(
            authenticationStatus: AuthenticationCompleted(false),
          ),
        ) {
    on<LoginPhoneChangedEvent>(_onLoginPhoneChanged);
    on<LoginSubmittedEvent>(_onLoginSubmitted);
  }

  LoginUseCase loginUseCase;

  FutureOr<void> _onLoginPhoneChanged(
    final LoginPhoneChangedEvent event,
    final Emitter<LoginState> emit,
  ) {
    final PhoneNumberInput phoneNumber =
        PhoneNumberInput.dirty(event.phoneNumber);
    emit(
      state.copyWith(phoneNumber: phoneNumber, isValid: phoneNumber.isValid),
    );
  }

  FutureOr<void> _onLoginSubmitted(
    final LoginSubmittedEvent event,
    final Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(newAuthenticationStatus: AuthenticationLoading()));

    final DataState dataState = await loginUseCase(event.phone);

    if (dataState is DataSuccess) {
      emit(
        state.copyWith(
          newAuthenticationStatus: AuthenticationCompleted(dataState.data),
        ),
      );
      emit(
        state.copyWith(
          newAuthenticationStatus: AuthenticationCompleted(false),
        ),
      );
    }
    if (dataState is DataFailed) {
      emit(
        state.copyWith(
          newAuthenticationStatus: AuthenticationError(dataState.error ?? ''),
        ),
      );
    }
  }
}
