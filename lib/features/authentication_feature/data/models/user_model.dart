import 'package:intl/intl.dart';

class UserModel {
  UserModel({
    this.phone,
    this.username,
    this.firstName,
    this.lastName,
    this.nationalCode,
    this.zpToken,
    this.nationalCodeConfirmed,
    this.shebaNumber,
    this.email,
    this.gender,
    this.notification,
    this.sms,
    this.referrer,
    this.isMarketer,
    this.isStaff,
    this.firstLogin,
    this.birthdate,
    this.certificateSerial,
    this.cityOfBirth,
    this.cityOfIssue,
    this.fatherName,
    this.ssid,
    this.stateOfBirth,
    this.stateOfIssue,
  });

  factory UserModel.fromJson(final Map<String, dynamic> json) => UserModel(
        phone: json['phone_number'],
        username: json['username'] ?? '',
        firstName: json['first_name'] ?? '',
        lastName: json['last_name'] ?? '',
        nationalCode: json['national_code'],
        zpToken: json['zp_access_token'],
        nationalCodeConfirmed: json['national_code_confirmed'],
        shebaNumber: json['sheba'],
        email: json['email'],
        gender: json['gender'],
        notification: json['notification'] ?? true,
        sms: json['sms'] ?? true,
        referrer: json['referrer'],
        isMarketer: json['is_marketer'] ?? false,
        isStaff: json['is_staff'] ?? false,
        firstLogin: json['first_login'] == null
            ? null
            : DateTime.parse(json['first_login']),
        birthdate: json['birthdate'] != null
            ? DateTime.parse(json['birthdate'])
            : null,
        stateOfIssue: json['state_of_issue'],
        stateOfBirth: json['state_of_birth'],
        ssid: json['ssid'],
        certificateSerial: json['certificate_serial'],
        fatherName: json['father_name'],
        cityOfIssue: json['city_of_issue'],
        cityOfBirth: json['city_of_birth'],
      );

  factory UserModel.forCommentFromJson(final Map<String, dynamic> json) =>
      UserModel(
        username: json['username'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        email: json['email'],
        gender: json['gender'],
      );

  String? phone;
  String? username;
  String? firstName;
  String? lastName;
  String? nationalCode;
  String? zpToken;
  bool? nationalCodeConfirmed;
  String? shebaNumber;
  String? email;
  int? gender;
  bool? notification;
  bool? sms;
  int? referrer;
  bool? isMarketer;
  bool? isStaff;
  DateTime? firstLogin;
  DateTime? birthdate;
  String? fatherName;
  int? stateOfBirth;
  int? cityOfBirth;
  int? cityOfIssue;
  int? stateOfIssue;
  String? ssid;
  String? certificateSerial;

  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'last_name': lastName,
        'national_code': nationalCode,
        'sheba': shebaNumber,
        'email': email,
        'gender': gender,
        'birthdate': birthdate != null
            ? DateFormat('yyyy-MM-dd').format(birthdate!)
            : null,
        'state_of_issue': stateOfIssue,
        'state_of_birth': stateOfBirth,
        'ssid': ssid,
        'certificate_serial': certificateSerial,
        'father_name': fatherName,
        'city_of_issue': cityOfIssue,
        'city_of_birth': cityOfBirth,
      };
}

List<PhoneCarrier> phoneCarriers(final data) => data
    .map<PhoneCarrier>(
      (final e) => PhoneCarrier.fromJson(e),
    )
    .toList();

class PhoneCarrier {
  PhoneCarrier({this.id, this.name, this.numPrefix});

  factory PhoneCarrier.fromJson(final json) => PhoneCarrier(
        id: json['id'],
        name: json['name'],
        numPrefix: json['number_prefix'].replaceFirst('98', '0'),
      );
  int? id;
  String? name;
  String? numPrefix;
}
