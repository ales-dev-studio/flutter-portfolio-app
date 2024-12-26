part of 'profile_bloc.dart';

abstract class ProfileEvent {}

class FetchProfileEvent extends ProfileEvent {}

class FetchProfileLoading extends ProfileEvent {}

class FetchProfileCompleted extends ProfileEvent {

  FetchProfileCompleted(this.userModel);
  final UserModel userModel;
}

class FetchProfileError extends ProfileEvent {

  FetchProfileError(this.message);
  final String message;
}

class EditPhoneEvent extends ProfileEvent {

  EditPhoneEvent(this.phoneNumber);
  final String phoneNumber;
}

class EditNameEvent extends ProfileEvent {

  EditNameEvent(this.name);
  final String name;
}

class EditLastNameEvent extends ProfileEvent {

  EditLastNameEvent(this.lastName);
  final String lastName;
}

class EditNationalCodeEvent extends ProfileEvent {

  EditNationalCodeEvent(this.nationalCode);
  final String nationalCode;
}

class EditGenderEvent extends ProfileEvent {

  EditGenderEvent(this.gender);
  final int gender;
}

class EditBirthDateEvent extends ProfileEvent {

  EditBirthDateEvent(this.birthDate);
  final Jalali birthDate;
}

class EditEmailEvent extends ProfileEvent {

  EditEmailEvent(this.email);
  final String email;
}

class EditShebaEvent extends ProfileEvent {

  EditShebaEvent(this.sheba);
  final String sheba;
}

class SetValuesStatusEvent extends ProfileEvent {

  SetValuesStatusEvent(this.value);
  final bool value;
}

class SubmitEvent extends ProfileEvent {}
