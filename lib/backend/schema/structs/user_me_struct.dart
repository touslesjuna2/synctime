// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserMeStruct extends BaseStruct {
  UserMeStruct({
    int? id,
    String? loginId,
    String? fullName,
    int? univId,
    int? schoolEmail,
    String? academicStatus,
    String? userStatus,
    String? studentId,
    String? major,
    String? password,
  })  : _id = id,
        _loginId = loginId,
        _fullName = fullName,
        _univId = univId,
        _schoolEmail = schoolEmail,
        _academicStatus = academicStatus,
        _userStatus = userStatus,
        _studentId = studentId,
        _major = major,
        _password = password;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "login_id" field.
  String? _loginId;
  String get loginId => _loginId ?? '';
  set loginId(String? val) => _loginId = val;

  bool hasLoginId() => _loginId != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "univ_id" field.
  int? _univId;
  int get univId => _univId ?? 0;
  set univId(int? val) => _univId = val;

  void incrementUnivId(int amount) => univId = univId + amount;

  bool hasUnivId() => _univId != null;

  // "school_email" field.
  int? _schoolEmail;
  int get schoolEmail => _schoolEmail ?? 0;
  set schoolEmail(int? val) => _schoolEmail = val;

  void incrementSchoolEmail(int amount) => schoolEmail = schoolEmail + amount;

  bool hasSchoolEmail() => _schoolEmail != null;

  // "academic_status" field.
  String? _academicStatus;
  String get academicStatus => _academicStatus ?? '';
  set academicStatus(String? val) => _academicStatus = val;

  bool hasAcademicStatus() => _academicStatus != null;

  // "user_status" field.
  String? _userStatus;
  String get userStatus => _userStatus ?? '';
  set userStatus(String? val) => _userStatus = val;

  bool hasUserStatus() => _userStatus != null;

  // "student_id" field.
  String? _studentId;
  String get studentId => _studentId ?? '';
  set studentId(String? val) => _studentId = val;

  bool hasStudentId() => _studentId != null;

  // "major" field.
  String? _major;
  String get major => _major ?? '';
  set major(String? val) => _major = val;

  bool hasMajor() => _major != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  static UserMeStruct fromMap(Map<String, dynamic> data) => UserMeStruct(
        id: castToType<int>(data['id']),
        loginId: data['login_id'] as String?,
        fullName: data['full_name'] as String?,
        univId: castToType<int>(data['univ_id']),
        schoolEmail: castToType<int>(data['school_email']),
        academicStatus: data['academic_status'] as String?,
        userStatus: data['user_status'] as String?,
        studentId: data['student_id'] as String?,
        major: data['major'] as String?,
        password: data['password'] as String?,
      );

  static UserMeStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserMeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'login_id': _loginId,
        'full_name': _fullName,
        'univ_id': _univId,
        'school_email': _schoolEmail,
        'academic_status': _academicStatus,
        'user_status': _userStatus,
        'student_id': _studentId,
        'major': _major,
        'password': _password,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'login_id': serializeParam(
          _loginId,
          ParamType.String,
        ),
        'full_name': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'univ_id': serializeParam(
          _univId,
          ParamType.int,
        ),
        'school_email': serializeParam(
          _schoolEmail,
          ParamType.int,
        ),
        'academic_status': serializeParam(
          _academicStatus,
          ParamType.String,
        ),
        'user_status': serializeParam(
          _userStatus,
          ParamType.String,
        ),
        'student_id': serializeParam(
          _studentId,
          ParamType.String,
        ),
        'major': serializeParam(
          _major,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserMeStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserMeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        loginId: deserializeParam(
          data['login_id'],
          ParamType.String,
          false,
        ),
        fullName: deserializeParam(
          data['full_name'],
          ParamType.String,
          false,
        ),
        univId: deserializeParam(
          data['univ_id'],
          ParamType.int,
          false,
        ),
        schoolEmail: deserializeParam(
          data['school_email'],
          ParamType.int,
          false,
        ),
        academicStatus: deserializeParam(
          data['academic_status'],
          ParamType.String,
          false,
        ),
        userStatus: deserializeParam(
          data['user_status'],
          ParamType.String,
          false,
        ),
        studentId: deserializeParam(
          data['student_id'],
          ParamType.String,
          false,
        ),
        major: deserializeParam(
          data['major'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserMeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserMeStruct &&
        id == other.id &&
        loginId == other.loginId &&
        fullName == other.fullName &&
        univId == other.univId &&
        schoolEmail == other.schoolEmail &&
        academicStatus == other.academicStatus &&
        userStatus == other.userStatus &&
        studentId == other.studentId &&
        major == other.major &&
        password == other.password;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        loginId,
        fullName,
        univId,
        schoolEmail,
        academicStatus,
        userStatus,
        studentId,
        major,
        password
      ]);
}

UserMeStruct createUserMeStruct({
  int? id,
  String? loginId,
  String? fullName,
  int? univId,
  int? schoolEmail,
  String? academicStatus,
  String? userStatus,
  String? studentId,
  String? major,
  String? password,
}) =>
    UserMeStruct(
      id: id,
      loginId: loginId,
      fullName: fullName,
      univId: univId,
      schoolEmail: schoolEmail,
      academicStatus: academicStatus,
      userStatus: userStatus,
      studentId: studentId,
      major: major,
      password: password,
    );
