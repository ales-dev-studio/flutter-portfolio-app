import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:personal_portfolio/core/resources/data_state.dart';
import 'package:personal_portfolio/core/use_case/use_case.dart';
import 'package:personal_portfolio/core/utils/app_snack_bar.dart';
import 'package:personal_portfolio/core/utils/form_utils/formz_validation_models/email_input.dart';
import 'package:personal_portfolio/core/utils/form_utils/formz_validation_models/last_name_input.dart';
import 'package:personal_portfolio/core/utils/form_utils/formz_validation_models/name_input.dart';
import 'package:personal_portfolio/core/utils/form_utils/formz_validation_models/national_code_input.dart';
import 'package:personal_portfolio/core/utils/form_utils/formz_validation_models/phone_number_input.dart';
import 'package:personal_portfolio/core/utils/form_utils/formz_validation_models/sheba_number_input.dart';
import 'package:personal_portfolio/core/utils/form_utils/formz_validation_models/validation_error_extensions.dart';
import 'package:personal_portfolio/core/utils/form_utils/general_formz_validator.dart';
import 'package:personal_portfolio/features/authentication_feature/data/models/user_model.dart';
import 'package:personal_portfolio/features/authentication_feature/domain/usecases/use_cases.dart';
import 'package:personal_portfolio/features/authentication_feature/presentation/bloc/profile_status.dart';
import 'package:personal_portfolio/features/authentication_feature/presentation/bloc/submit_profile_status.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this.getUserProfileUseCase, this.editUserProfileUseCase)
      : super(ProfileState(profileStatus: ProfileLoading())) {
    on<FetchProfileEvent>(_getUserProfile);
    on<EditPhoneEvent>(_editPhoneEvent);
    on<EditNameEvent>(_editNameEvent);
    on<EditLastNameEvent>(_editLastNameEvent);
    on<EditNationalCodeEvent>(_editNationalCode);
    on<EditGenderEvent>(_editGender);
    on<EditBirthDateEvent>(_editBirthDate);
    on<EditEmailEvent>(_editEmail);
    on<EditShebaEvent>(_editSheba);
    on<SetValuesStatusEvent>(_onSetValues);
    on<SubmitEvent>(_submit);
  }

  GetUserProfileUseCase getUserProfileUseCase;
  EditUserProfileUseCase editUserProfileUseCase;

  FutureOr<void> _getUserProfile(
    final FetchProfileEvent event,
    final Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(newProfileStatus: ProfileLoading()));

    final DataState dataState = await getUserProfileUseCase(NoParams());

    if (dataState is DataSuccess) {
      emit(
        state.copyWith(
          newProfileStatus: ProfileCompleted(
            dataState.data,
          ),
        ),
      );
    }

    if (dataState is DataFailed) {
      emit(
        state.copyWith(
          newProfileStatus: ProfileError(
            dataState.error ?? '',
          ),
        ),
      );
    }
  }

  FutureOr<void> _editPhoneEvent(
    final EditPhoneEvent event,
    final Emitter<ProfileState> emit,
  ) {
    final PhoneNumberInput phoneNumber =
        PhoneNumberInput.dirty(event.phoneNumber);
    emit(
      state.copyWith(phoneNumber: phoneNumber),
    );
  }

  FutureOr<void> _editNameEvent(
    final EditNameEvent event,
    final Emitter<ProfileState> emit,
  ) {
    final NameInput name = NameInput.dirty(event.name);
    emit(
      state.copyWith(name: name),
    );
  }

  FutureOr<void> _editLastNameEvent(
    final EditLastNameEvent event,
    final Emitter<ProfileState> emit,
  ) {
    final LastNameInput lastName = LastNameInput.dirty(event.lastName);
    emit(
      state.copyWith(lastName: lastName),
    );
  }

  FutureOr<void> _editNationalCode(
    final EditNationalCodeEvent event,
    final Emitter<ProfileState> emit,
  ) {
    final NationalCodeInput nationalCode =
        NationalCodeInput.dirty(event.nationalCode);
    emit(
      state.copyWith(nationalCode: nationalCode),
    );
  }

  FutureOr<void> _editGender(
    final EditGenderEvent event,
    final Emitter<ProfileState> emit,
  ) {
    final int gender = event.gender;
    emit(
      state.copyWith(gender: gender),
    );
  }

  FutureOr<void> _editBirthDate(
    final EditBirthDateEvent event,
    final Emitter<ProfileState> emit,
  ) {
    emit(
      state.copyWith(
        birthDate: event.birthDate,
      ),
    );
  }

  FutureOr<void> _editEmail(
    final EditEmailEvent event,
    final Emitter<ProfileState> emit,
  ) {
    final EmailInput email = EmailInput.dirty(event.email);
    emit(
      state.copyWith(email: email),
    );
  }

  FutureOr<void> _editSheba(
    final EditShebaEvent event,
    final Emitter<ProfileState> emit,
  ) {
    final ShebaNumberInput shebaNumber = ShebaNumberInput.dirty(event.sheba);
    emit(
      state.copyWith(shebaNumber: shebaNumber),
    );
  }

  FutureOr<void> _onSetValues(
    final SetValuesStatusEvent event,
    final Emitter<ProfileState> emit,
  ) {
    emit(state.copyWith(setValuesStatus: event.value));
  }

  FutureOr<void> _submit(
    final SubmitEvent event,
    final Emitter<ProfileState> emit,
  ) async {
    final List<FormzInput> inputList = <FormzInput>[
      state.name,
      state.lastName,
      state.nationalCode,
      state.email,
      state.shebaNumber,
    ];

    final List<String?> formzInputErrorText = <String?>[
      state.name.error?.errorText(),
      state.lastName.error?.errorText(),
      state.nationalCode.error?.errorText(),
      state.email.error?.errorText(),
      state.shebaNumber.error?.errorText(),
    ];

    if (generalFormzValidator(
      formzInputList: inputList,
      formzInputErrorText: formzInputErrorText,
    )) {
      emit(state.copyWith(newSubmitProfileStatus: SubmitProfileLoading()));

      final UserModel userModel = UserModel(
        phone: state.phoneNumber.value,
        firstName: state.name.value,
        lastName: state.lastName.value,
        nationalCode: state.nationalCode.value,
        gender: state.gender,
        birthdate: state.birthDate?.toDateTime(),
        email: state.email.value,
        shebaNumber: state.shebaNumber.value,
      );

      final DataState dataState = await editUserProfileUseCase(userModel);

      if (dataState is DataSuccess) {
        emit(
          state.copyWith(
            newSubmitProfileStatus: SubmitProfileCompleted(),
          ),
        );
        showSnackBar('Success');
      }

      if (dataState is DataFailed) {
        emit(
          state.copyWith(
            newSubmitProfileStatus: SubmitProfileError(),
          ),
        );
        if (dataState.error != null) {
          showSnackBar(dataState.error);
        }
      }
    }
  }
}
