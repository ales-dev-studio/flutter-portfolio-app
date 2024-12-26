import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/resources/data_state.dart';
import 'package:personal_portfolio/features/authentication_feature/data/models/verify_otp_model.dart';
import 'package:personal_portfolio/features/authentication_feature/domain/usecases/use_cases.dart';
import 'package:personal_portfolio/features/authentication_feature/presentation/bloc/authentication_status.dart';

part 'verify_otp_event.dart';

part 'verify_otp_state.dart';

class VerifyOtpBloc extends Bloc<VerifyOtpEvent, VerifyOtpState> {

  VerifyOtpBloc(this.verifyOtpUseCase)
      : super(VerifyOtpState(
          authenticationStatus: AuthenticationCompleted(false),
        ),) {
    on<VerifyOtpChangedEvent>(_verifyOtpChanged);
  }
  VerifyOtpUseCase verifyOtpUseCase;

  FutureOr<void> _verifyOtpChanged(
    final VerifyOtpChangedEvent event,
    final Emitter<VerifyOtpState> emit,
  ) async {
    final String? otp = event.otp;
    emit(state.copyWith(otp: otp));

    if (otp != null) {
      if (otp.length == 6) {
        emit(state.copyWith(newAuthenticationStatus: AuthenticationLoading()));

        final DataState dataState = await verifyOtpUseCase(
          VerifyOtpModel(
            phoneNumber: event.mobileNumber!.replaceFirst('0', '98'),
            otp: otp,
          ),
        );

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
              newAuthenticationStatus: AuthenticationError(
                dataState.error ?? '',
              ),
            ),
          );
          emit(
            state.copyWith(
              newAuthenticationStatus: AuthenticationCompleted(false),
            ),
          );
        }
      }
    }
  }
}
