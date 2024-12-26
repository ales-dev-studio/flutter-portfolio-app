part of 'profile_bloc.dart';

class ProfileState {
  ProfileState({
    this.profileStatus,
    this.submitProfileStatus,
    this.phoneNumber = const PhoneNumberInput.pure(),
    this.name = const NameInput.pure(),
    this.lastName = const LastNameInput.pure(),
    this.nationalCode = const NationalCodeInput.pure(),
    this.gender,
    this.birthDate,
    this.email = const EmailInput.pure(),
    this.shebaNumber = const ShebaNumberInput.pure(),
    this.setValuesStatus = false,
  });

  final ProfileStatus? profileStatus;
  final SubmitProfileStatus? submitProfileStatus;
  final PhoneNumberInput phoneNumber;
  final NameInput name;
  final LastNameInput lastName;
  final NationalCodeInput nationalCode;
  final int? gender;
  final Jalali? birthDate;
  final EmailInput email;
  final ShebaNumberInput shebaNumber;
  final bool setValuesStatus;

  ProfileState copyWith({
    final BuildContext? context,
    final ProfileStatus? newProfileStatus,
    final SubmitProfileStatus? newSubmitProfileStatus ,
    final PhoneNumberInput? phoneNumber,
    final NameInput? name,
    final LastNameInput? lastName,
    final NationalCodeInput? nationalCode,
    final int? gender,
    final Jalali? birthDate,
    final EmailInput? email,
    final ShebaNumberInput? shebaNumber,
    final bool? setValuesStatus,
  }) {
    return ProfileState(
      profileStatus: newProfileStatus ?? profileStatus,
      submitProfileStatus: newSubmitProfileStatus ?? submitProfileStatus,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      nationalCode: nationalCode ?? this.nationalCode,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      email: email ?? this.email,
      shebaNumber: shebaNumber ?? this.shebaNumber,
      setValuesStatus: setValuesStatus ?? this.setValuesStatus,
    );
  }
}
