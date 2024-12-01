import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _newPasswordInput = '';
  String get newPasswordInput => _newPasswordInput;
  set newPasswordInput(String value) {
    _newPasswordInput = value;
  }

  String _confirmPasswordInput = '';
  String get confirmPasswordInput => _confirmPasswordInput;
  set confirmPasswordInput(String value) {
    _confirmPasswordInput = value;
  }

  String _currentPasswordInput = '';
  String get currentPasswordInput => _currentPasswordInput;
  set currentPasswordInput(String value) {
    _currentPasswordInput = value;
  }

  String _UsernameTemp = '';
  String get UsernameTemp => _UsernameTemp;
  set UsernameTemp(String value) {
    _UsernameTemp = value;
  }

  String _UniversityTemp = '';
  String get UniversityTemp => _UniversityTemp;
  set UniversityTemp(String value) {
    _UniversityTemp = value;
  }

  int _id = 0;
  int get id => _id;
  set id(int value) {
    _id = value;
  }

  String _loginid = '';
  String get loginid => _loginid;
  set loginid(String value) {
    _loginid = value;
  }

  String _fullname = '';
  String get fullname => _fullname;
  set fullname(String value) {
    _fullname = value;
  }

  int _univid = 0;
  int get univid => _univid;
  set univid(int value) {
    _univid = value;
  }

  String _schoolemail = '';
  String get schoolemail => _schoolemail;
  set schoolemail(String value) {
    _schoolemail = value;
  }

  String _academicstatus = '';
  String get academicstatus => _academicstatus;
  set academicstatus(String value) {
    _academicstatus = value;
  }

  String _studentid = '';
  String get studentid => _studentid;
  set studentid(String value) {
    _studentid = value;
  }

  String _major = '';
  String get major => _major;
  set major(String value) {
    _major = value;
  }

  String _password = '';
  String get password => _password;
  set password(String value) {
    _password = value;
  }
}
