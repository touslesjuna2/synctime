// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BoardListStruct extends BaseStruct {
  BoardListStruct({
    int? id,
    int? univId,
    String? name,
    String? description,
    bool? anonym,
    bool? qna,
    List<String>? requireTags,
    String? boardType,
    int? managerId,
    int? createdAt,
    String? notificationPosts,
    bool? isDeleted,
    String? rules,
    bool? isManager,
  })  : _id = id,
        _univId = univId,
        _name = name,
        _description = description,
        _anonym = anonym,
        _qna = qna,
        _requireTags = requireTags,
        _boardType = boardType,
        _managerId = managerId,
        _createdAt = createdAt,
        _notificationPosts = notificationPosts,
        _isDeleted = isDeleted,
        _rules = rules,
        _isManager = isManager;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "univ_id" field.
  int? _univId;
  int get univId => _univId ?? 0;
  set univId(int? val) => _univId = val;

  void incrementUnivId(int amount) => univId = univId + amount;

  bool hasUnivId() => _univId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "anonym" field.
  bool? _anonym;
  bool get anonym => _anonym ?? false;
  set anonym(bool? val) => _anonym = val;

  bool hasAnonym() => _anonym != null;

  // "qna" field.
  bool? _qna;
  bool get qna => _qna ?? false;
  set qna(bool? val) => _qna = val;

  bool hasQna() => _qna != null;

  // "require_tags" field.
  List<String>? _requireTags;
  List<String> get requireTags => _requireTags ?? const [];
  set requireTags(List<String>? val) => _requireTags = val;

  void updateRequireTags(Function(List<String>) updateFn) {
    updateFn(_requireTags ??= []);
  }

  bool hasRequireTags() => _requireTags != null;

  // "board_type" field.
  String? _boardType;
  String get boardType => _boardType ?? '';
  set boardType(String? val) => _boardType = val;

  bool hasBoardType() => _boardType != null;

  // "manager_id" field.
  int? _managerId;
  int get managerId => _managerId ?? 0;
  set managerId(int? val) => _managerId = val;

  void incrementManagerId(int amount) => managerId = managerId + amount;

  bool hasManagerId() => _managerId != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "notification_posts" field.
  String? _notificationPosts;
  String get notificationPosts => _notificationPosts ?? '';
  set notificationPosts(String? val) => _notificationPosts = val;

  bool hasNotificationPosts() => _notificationPosts != null;

  // "is_deleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  set isDeleted(bool? val) => _isDeleted = val;

  bool hasIsDeleted() => _isDeleted != null;

  // "rules" field.
  String? _rules;
  String get rules => _rules ?? '';
  set rules(String? val) => _rules = val;

  bool hasRules() => _rules != null;

  // "is_manager" field.
  bool? _isManager;
  bool get isManager => _isManager ?? false;
  set isManager(bool? val) => _isManager = val;

  bool hasIsManager() => _isManager != null;

  static BoardListStruct fromMap(Map<String, dynamic> data) => BoardListStruct(
        id: castToType<int>(data['id']),
        univId: castToType<int>(data['univ_id']),
        name: data['name'] as String?,
        description: data['description'] as String?,
        anonym: data['anonym'] as bool?,
        qna: data['qna'] as bool?,
        requireTags: getDataList(data['require_tags']),
        boardType: data['board_type'] as String?,
        managerId: castToType<int>(data['manager_id']),
        createdAt: castToType<int>(data['created_at']),
        notificationPosts: data['notification_posts'] as String?,
        isDeleted: data['is_deleted'] as bool?,
        rules: data['rules'] as String?,
        isManager: data['is_manager'] as bool?,
      );

  static BoardListStruct? maybeFromMap(dynamic data) => data is Map
      ? BoardListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'univ_id': _univId,
        'name': _name,
        'description': _description,
        'anonym': _anonym,
        'qna': _qna,
        'require_tags': _requireTags,
        'board_type': _boardType,
        'manager_id': _managerId,
        'created_at': _createdAt,
        'notification_posts': _notificationPosts,
        'is_deleted': _isDeleted,
        'rules': _rules,
        'is_manager': _isManager,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'univ_id': serializeParam(
          _univId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'anonym': serializeParam(
          _anonym,
          ParamType.bool,
        ),
        'qna': serializeParam(
          _qna,
          ParamType.bool,
        ),
        'require_tags': serializeParam(
          _requireTags,
          ParamType.String,
          isList: true,
        ),
        'board_type': serializeParam(
          _boardType,
          ParamType.String,
        ),
        'manager_id': serializeParam(
          _managerId,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'notification_posts': serializeParam(
          _notificationPosts,
          ParamType.String,
        ),
        'is_deleted': serializeParam(
          _isDeleted,
          ParamType.bool,
        ),
        'rules': serializeParam(
          _rules,
          ParamType.String,
        ),
        'is_manager': serializeParam(
          _isManager,
          ParamType.bool,
        ),
      }.withoutNulls;

  static BoardListStruct fromSerializableMap(Map<String, dynamic> data) =>
      BoardListStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        univId: deserializeParam(
          data['univ_id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        anonym: deserializeParam(
          data['anonym'],
          ParamType.bool,
          false,
        ),
        qna: deserializeParam(
          data['qna'],
          ParamType.bool,
          false,
        ),
        requireTags: deserializeParam<String>(
          data['require_tags'],
          ParamType.String,
          true,
        ),
        boardType: deserializeParam(
          data['board_type'],
          ParamType.String,
          false,
        ),
        managerId: deserializeParam(
          data['manager_id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        notificationPosts: deserializeParam(
          data['notification_posts'],
          ParamType.String,
          false,
        ),
        isDeleted: deserializeParam(
          data['is_deleted'],
          ParamType.bool,
          false,
        ),
        rules: deserializeParam(
          data['rules'],
          ParamType.String,
          false,
        ),
        isManager: deserializeParam(
          data['is_manager'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'BoardListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is BoardListStruct &&
        id == other.id &&
        univId == other.univId &&
        name == other.name &&
        description == other.description &&
        anonym == other.anonym &&
        qna == other.qna &&
        listEquality.equals(requireTags, other.requireTags) &&
        boardType == other.boardType &&
        managerId == other.managerId &&
        createdAt == other.createdAt &&
        notificationPosts == other.notificationPosts &&
        isDeleted == other.isDeleted &&
        rules == other.rules &&
        isManager == other.isManager;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        univId,
        name,
        description,
        anonym,
        qna,
        requireTags,
        boardType,
        managerId,
        createdAt,
        notificationPosts,
        isDeleted,
        rules,
        isManager
      ]);
}

BoardListStruct createBoardListStruct({
  int? id,
  int? univId,
  String? name,
  String? description,
  bool? anonym,
  bool? qna,
  String? boardType,
  int? managerId,
  int? createdAt,
  String? notificationPosts,
  bool? isDeleted,
  String? rules,
  bool? isManager,
}) =>
    BoardListStruct(
      id: id,
      univId: univId,
      name: name,
      description: description,
      anonym: anonym,
      qna: qna,
      boardType: boardType,
      managerId: managerId,
      createdAt: createdAt,
      notificationPosts: notificationPosts,
      isDeleted: isDeleted,
      rules: rules,
      isManager: isManager,
    );
