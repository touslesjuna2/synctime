import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _accesstoken = prefs.getString('ff_accesstoken') ?? _accesstoken;
    });
    _safeInit(() {
      _refreshtoken = prefs.getString('ff_refreshtoken') ?? _refreshtoken;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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

  String _accesstoken = '';
  String get accesstoken => _accesstoken;
  set accesstoken(String value) {
    _accesstoken = value;
    prefs.setString('ff_accesstoken', value);
  }

  String _refreshtoken = '';
  String get refreshtoken => _refreshtoken;
  set refreshtoken(String value) {
    _refreshtoken = value;
    prefs.setString('ff_refreshtoken', value);
  }

  List<String> _uniqueContries = [];
  List<String> get uniqueContries => _uniqueContries;
  set uniqueContries(List<String> value) {
    _uniqueContries = value;
  }

  void addToUniqueContries(String value) {
    uniqueContries.add(value);
  }

  void removeFromUniqueContries(String value) {
    uniqueContries.remove(value);
  }

  void removeAtIndexFromUniqueContries(int index) {
    uniqueContries.removeAt(index);
  }

  void updateUniqueContriesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    uniqueContries[index] = updateFn(_uniqueContries[index]);
  }

  void insertAtIndexInUniqueContries(int index, String value) {
    uniqueContries.insert(index, value);
  }

  String _selectedCountry = '';
  String get selectedCountry => _selectedCountry;
  set selectedCountry(String value) {
    _selectedCountry = value;
  }

  String _selectedUniversity = '';
  String get selectedUniversity => _selectedUniversity;
  set selectedUniversity(String value) {
    _selectedUniversity = value;
  }

  int _selectedUniversityID = 0;
  int get selectedUniversityID => _selectedUniversityID;
  set selectedUniversityID(int value) {
    _selectedUniversityID = value;
  }

  List<String> _allcountries = [];
  List<String> get allcountries => _allcountries;
  set allcountries(List<String> value) {
    _allcountries = value;
  }

  void addToAllcountries(String value) {
    allcountries.add(value);
  }

  void removeFromAllcountries(String value) {
    allcountries.remove(value);
  }

  void removeAtIndexFromAllcountries(int index) {
    allcountries.removeAt(index);
  }

  void updateAllcountriesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    allcountries[index] = updateFn(_allcountries[index]);
  }

  void insertAtIndexInAllcountries(int index, String value) {
    allcountries.insert(index, value);
  }

  List<String> _filtereduniversities = [];
  List<String> get filtereduniversities => _filtereduniversities;
  set filtereduniversities(List<String> value) {
    _filtereduniversities = value;
  }

  void addToFiltereduniversities(String value) {
    filtereduniversities.add(value);
  }

  void removeFromFiltereduniversities(String value) {
    filtereduniversities.remove(value);
  }

  void removeAtIndexFromFiltereduniversities(int index) {
    filtereduniversities.removeAt(index);
  }

  void updateFiltereduniversitiesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    filtereduniversities[index] = updateFn(_filtereduniversities[index]);
  }

  void insertAtIndexInFiltereduniversities(int index, String value) {
    filtereduniversities.insert(index, value);
  }

  List<GetRecentPostsFromBoardidAndUnividStruct> _PPViewBoardRecentPosts = [];
  List<GetRecentPostsFromBoardidAndUnividStruct> get PPViewBoardRecentPosts =>
      _PPViewBoardRecentPosts;
  set PPViewBoardRecentPosts(
      List<GetRecentPostsFromBoardidAndUnividStruct> value) {
    _PPViewBoardRecentPosts = value;
  }

  void addToPPViewBoardRecentPosts(
      GetRecentPostsFromBoardidAndUnividStruct value) {
    PPViewBoardRecentPosts.add(value);
  }

  void removeFromPPViewBoardRecentPosts(
      GetRecentPostsFromBoardidAndUnividStruct value) {
    PPViewBoardRecentPosts.remove(value);
  }

  void removeAtIndexFromPPViewBoardRecentPosts(int index) {
    PPViewBoardRecentPosts.removeAt(index);
  }

  void updatePPViewBoardRecentPostsAtIndex(
    int index,
    GetRecentPostsFromBoardidAndUnividStruct Function(
            GetRecentPostsFromBoardidAndUnividStruct)
        updateFn,
  ) {
    PPViewBoardRecentPosts[index] = updateFn(_PPViewBoardRecentPosts[index]);
  }

  void insertAtIndexInPPViewBoardRecentPosts(
      int index, GetRecentPostsFromBoardidAndUnividStruct value) {
    PPViewBoardRecentPosts.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
