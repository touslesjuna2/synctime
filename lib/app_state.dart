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
      _anonymImagePath =
          prefs.getString('ff_anonymImagePath') ?? _anonymImagePath;
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

  String _userstatus = '';
  String get userstatus => _userstatus;
  set userstatus(String value) {
    _userstatus = value;
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

  List<ReadRecentPostsInBoardIdStruct> _ppReadPostsListInBoardId = [];
  List<ReadRecentPostsInBoardIdStruct> get ppReadPostsListInBoardId =>
      _ppReadPostsListInBoardId;
  set ppReadPostsListInBoardId(List<ReadRecentPostsInBoardIdStruct> value) {
    _ppReadPostsListInBoardId = value;
  }

  void addToPpReadPostsListInBoardId(ReadRecentPostsInBoardIdStruct value) {
    ppReadPostsListInBoardId.add(value);
  }

  void removeFromPpReadPostsListInBoardId(
      ReadRecentPostsInBoardIdStruct value) {
    ppReadPostsListInBoardId.remove(value);
  }

  void removeAtIndexFromPpReadPostsListInBoardId(int index) {
    ppReadPostsListInBoardId.removeAt(index);
  }

  void updatePpReadPostsListInBoardIdAtIndex(
    int index,
    ReadRecentPostsInBoardIdStruct Function(ReadRecentPostsInBoardIdStruct)
        updateFn,
  ) {
    ppReadPostsListInBoardId[index] =
        updateFn(_ppReadPostsListInBoardId[index]);
  }

  void insertAtIndexInPpReadPostsListInBoardId(
      int index, ReadRecentPostsInBoardIdStruct value) {
    ppReadPostsListInBoardId.insert(index, value);
  }

  List<ReadMyRelatedBoardStruct> _ppReadMyRelatedBoard = [];
  List<ReadMyRelatedBoardStruct> get ppReadMyRelatedBoard =>
      _ppReadMyRelatedBoard;
  set ppReadMyRelatedBoard(List<ReadMyRelatedBoardStruct> value) {
    _ppReadMyRelatedBoard = value;
  }

  void addToPpReadMyRelatedBoard(ReadMyRelatedBoardStruct value) {
    ppReadMyRelatedBoard.add(value);
  }

  void removeFromPpReadMyRelatedBoard(ReadMyRelatedBoardStruct value) {
    ppReadMyRelatedBoard.remove(value);
  }

  void removeAtIndexFromPpReadMyRelatedBoard(int index) {
    ppReadMyRelatedBoard.removeAt(index);
  }

  void updatePpReadMyRelatedBoardAtIndex(
    int index,
    ReadMyRelatedBoardStruct Function(ReadMyRelatedBoardStruct) updateFn,
  ) {
    ppReadMyRelatedBoard[index] = updateFn(_ppReadMyRelatedBoard[index]);
  }

  void insertAtIndexInPpReadMyRelatedBoard(
      int index, ReadMyRelatedBoardStruct value) {
    ppReadMyRelatedBoard.insert(index, value);
  }

  String _anonymImagePath =
      'https://i.pinimg.com/280x280_RS/ce/6c/fc/ce6cfc73ef62f44510a64bc62937328f.jpg';
  String get anonymImagePath => _anonymImagePath;
  set anonymImagePath(String value) {
    _anonymImagePath = value;
    prefs.setString('ff_anonymImagePath', value);
  }

  ReadPostDetailsStruct _ppReadPostDetails = ReadPostDetailsStruct();
  ReadPostDetailsStruct get ppReadPostDetails => _ppReadPostDetails;
  set ppReadPostDetails(ReadPostDetailsStruct value) {
    _ppReadPostDetails = value;
  }

  void updatePpReadPostDetailsStruct(Function(ReadPostDetailsStruct) updateFn) {
    updateFn(_ppReadPostDetails);
  }

  List<String> _selectedTags = [];
  List<String> get selectedTags => _selectedTags;
  set selectedTags(List<String> value) {
    _selectedTags = value;
  }

  void addToSelectedTags(String value) {
    selectedTags.add(value);
  }

  void removeFromSelectedTags(String value) {
    selectedTags.remove(value);
  }

  void removeAtIndexFromSelectedTags(int index) {
    selectedTags.removeAt(index);
  }

  void updateSelectedTagsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedTags[index] = updateFn(_selectedTags[index]);
  }

  void insertAtIndexInSelectedTags(int index, String value) {
    selectedTags.insert(index, value);
  }

  List<String> _myTags = [];
  List<String> get myTags => _myTags;
  set myTags(List<String> value) {
    _myTags = value;
  }

  void addToMyTags(String value) {
    myTags.add(value);
  }

  void removeFromMyTags(String value) {
    myTags.remove(value);
  }

  void removeAtIndexFromMyTags(int index) {
    myTags.removeAt(index);
  }

  void updateMyTagsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    myTags[index] = updateFn(_myTags[index]);
  }

  void insertAtIndexInMyTags(int index, String value) {
    myTags.insert(index, value);
  }

  String _access = '';
  String get access => _access;
  set access(String value) {
    _access = value;
  }

  List<String> _myImages = [];
  List<String> get myImages => _myImages;
  set myImages(List<String> value) {
    _myImages = value;
  }

  void addToMyImages(String value) {
    myImages.add(value);
  }

  void removeFromMyImages(String value) {
    myImages.remove(value);
  }

  void removeAtIndexFromMyImages(int index) {
    myImages.removeAt(index);
  }

  void updateMyImagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    myImages[index] = updateFn(_myImages[index]);
  }

  void insertAtIndexInMyImages(int index, String value) {
    myImages.insert(index, value);
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
