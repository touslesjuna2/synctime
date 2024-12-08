// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsStruct extends BaseStruct {
  CommentsStruct({
    int? id,
    int? postId,
    String? content,
    bool? anonym,
    int? anonymNum,
    int? parentCommentId,
    int? createdAt,
    int? updatedAt,
    int? likeCount,
    int? dislikeCount,
    bool? isBlinded,
    int? repliesCount,
    bool? isDeleted,
    bool? isCreator,
    int? myLikeStatus,
    UserBoardProfileStruct? userBoardProfile,
    List<CommentsStruct>? replies,
  })  : _id = id,
        _postId = postId,
        _content = content,
        _anonym = anonym,
        _anonymNum = anonymNum,
        _parentCommentId = parentCommentId,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _likeCount = likeCount,
        _dislikeCount = dislikeCount,
        _isBlinded = isBlinded,
        _repliesCount = repliesCount,
        _isDeleted = isDeleted,
        _isCreator = isCreator,
        _myLikeStatus = myLikeStatus,
        _userBoardProfile = userBoardProfile,
        _replies = replies;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "post_id" field.
  int? _postId;
  int get postId => _postId ?? 0;
  set postId(int? val) => _postId = val;

  void incrementPostId(int amount) => postId = postId + amount;

  bool hasPostId() => _postId != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  // "anonym" field.
  bool? _anonym;
  bool get anonym => _anonym ?? false;
  set anonym(bool? val) => _anonym = val;

  bool hasAnonym() => _anonym != null;

  // "anonym_num" field.
  int? _anonymNum;
  int get anonymNum => _anonymNum ?? 0;
  set anonymNum(int? val) => _anonymNum = val;

  void incrementAnonymNum(int amount) => anonymNum = anonymNum + amount;

  bool hasAnonymNum() => _anonymNum != null;

  // "parent_comment_id" field.
  int? _parentCommentId;
  int get parentCommentId => _parentCommentId ?? 0;
  set parentCommentId(int? val) => _parentCommentId = val;

  void incrementParentCommentId(int amount) =>
      parentCommentId = parentCommentId + amount;

  bool hasParentCommentId() => _parentCommentId != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  int? _updatedAt;
  int get updatedAt => _updatedAt ?? 0;
  set updatedAt(int? val) => _updatedAt = val;

  void incrementUpdatedAt(int amount) => updatedAt = updatedAt + amount;

  bool hasUpdatedAt() => _updatedAt != null;

  // "like_count" field.
  int? _likeCount;
  int get likeCount => _likeCount ?? 0;
  set likeCount(int? val) => _likeCount = val;

  void incrementLikeCount(int amount) => likeCount = likeCount + amount;

  bool hasLikeCount() => _likeCount != null;

  // "dislike_count" field.
  int? _dislikeCount;
  int get dislikeCount => _dislikeCount ?? 0;
  set dislikeCount(int? val) => _dislikeCount = val;

  void incrementDislikeCount(int amount) =>
      dislikeCount = dislikeCount + amount;

  bool hasDislikeCount() => _dislikeCount != null;

  // "is_blinded" field.
  bool? _isBlinded;
  bool get isBlinded => _isBlinded ?? false;
  set isBlinded(bool? val) => _isBlinded = val;

  bool hasIsBlinded() => _isBlinded != null;

  // "replies_count" field.
  int? _repliesCount;
  int get repliesCount => _repliesCount ?? 0;
  set repliesCount(int? val) => _repliesCount = val;

  void incrementRepliesCount(int amount) =>
      repliesCount = repliesCount + amount;

  bool hasRepliesCount() => _repliesCount != null;

  // "is_deleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  set isDeleted(bool? val) => _isDeleted = val;

  bool hasIsDeleted() => _isDeleted != null;

  // "is_creator" field.
  bool? _isCreator;
  bool get isCreator => _isCreator ?? false;
  set isCreator(bool? val) => _isCreator = val;

  bool hasIsCreator() => _isCreator != null;

  // "my_like_status" field.
  int? _myLikeStatus;
  int get myLikeStatus => _myLikeStatus ?? 0;
  set myLikeStatus(int? val) => _myLikeStatus = val;

  void incrementMyLikeStatus(int amount) =>
      myLikeStatus = myLikeStatus + amount;

  bool hasMyLikeStatus() => _myLikeStatus != null;

  // "user_board_profile" field.
  UserBoardProfileStruct? _userBoardProfile;
  UserBoardProfileStruct get userBoardProfile =>
      _userBoardProfile ?? UserBoardProfileStruct();
  set userBoardProfile(UserBoardProfileStruct? val) => _userBoardProfile = val;

  void updateUserBoardProfile(Function(UserBoardProfileStruct) updateFn) {
    updateFn(_userBoardProfile ??= UserBoardProfileStruct());
  }

  bool hasUserBoardProfile() => _userBoardProfile != null;

  // "replies" field.
  List<CommentsStruct>? _replies;
  List<CommentsStruct> get replies => _replies ?? const [];
  set replies(List<CommentsStruct>? val) => _replies = val;

  void updateReplies(Function(List<CommentsStruct>) updateFn) {
    updateFn(_replies ??= []);
  }

  bool hasReplies() => _replies != null;

  static CommentsStruct fromMap(Map<String, dynamic> data) => CommentsStruct(
        id: castToType<int>(data['id']),
        postId: castToType<int>(data['post_id']),
        content: data['content'] as String?,
        anonym: data['anonym'] as bool?,
        anonymNum: castToType<int>(data['anonym_num']),
        parentCommentId: castToType<int>(data['parent_comment_id']),
        createdAt: castToType<int>(data['created_at']),
        updatedAt: castToType<int>(data['updated_at']),
        likeCount: castToType<int>(data['like_count']),
        dislikeCount: castToType<int>(data['dislike_count']),
        isBlinded: data['is_blinded'] as bool?,
        repliesCount: castToType<int>(data['replies_count']),
        isDeleted: data['is_deleted'] as bool?,
        isCreator: data['is_creator'] as bool?,
        myLikeStatus: castToType<int>(data['my_like_status']),
        userBoardProfile:
            UserBoardProfileStruct.maybeFromMap(data['user_board_profile']),
        replies: getStructList(
          data['replies'],
          CommentsStruct.fromMap,
        ),
      );

  static CommentsStruct? maybeFromMap(dynamic data) =>
      data is Map ? CommentsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'post_id': _postId,
        'content': _content,
        'anonym': _anonym,
        'anonym_num': _anonymNum,
        'parent_comment_id': _parentCommentId,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'like_count': _likeCount,
        'dislike_count': _dislikeCount,
        'is_blinded': _isBlinded,
        'replies_count': _repliesCount,
        'is_deleted': _isDeleted,
        'is_creator': _isCreator,
        'my_like_status': _myLikeStatus,
        'user_board_profile': _userBoardProfile?.toMap(),
        'replies': _replies?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'post_id': serializeParam(
          _postId,
          ParamType.int,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'anonym': serializeParam(
          _anonym,
          ParamType.bool,
        ),
        'anonym_num': serializeParam(
          _anonymNum,
          ParamType.int,
        ),
        'parent_comment_id': serializeParam(
          _parentCommentId,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.int,
        ),
        'like_count': serializeParam(
          _likeCount,
          ParamType.int,
        ),
        'dislike_count': serializeParam(
          _dislikeCount,
          ParamType.int,
        ),
        'is_blinded': serializeParam(
          _isBlinded,
          ParamType.bool,
        ),
        'replies_count': serializeParam(
          _repliesCount,
          ParamType.int,
        ),
        'is_deleted': serializeParam(
          _isDeleted,
          ParamType.bool,
        ),
        'is_creator': serializeParam(
          _isCreator,
          ParamType.bool,
        ),
        'my_like_status': serializeParam(
          _myLikeStatus,
          ParamType.int,
        ),
        'user_board_profile': serializeParam(
          _userBoardProfile,
          ParamType.DataStruct,
        ),
        'replies': serializeParam(
          _replies,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static CommentsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CommentsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        postId: deserializeParam(
          data['post_id'],
          ParamType.int,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        anonym: deserializeParam(
          data['anonym'],
          ParamType.bool,
          false,
        ),
        anonymNum: deserializeParam(
          data['anonym_num'],
          ParamType.int,
          false,
        ),
        parentCommentId: deserializeParam(
          data['parent_comment_id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.int,
          false,
        ),
        likeCount: deserializeParam(
          data['like_count'],
          ParamType.int,
          false,
        ),
        dislikeCount: deserializeParam(
          data['dislike_count'],
          ParamType.int,
          false,
        ),
        isBlinded: deserializeParam(
          data['is_blinded'],
          ParamType.bool,
          false,
        ),
        repliesCount: deserializeParam(
          data['replies_count'],
          ParamType.int,
          false,
        ),
        isDeleted: deserializeParam(
          data['is_deleted'],
          ParamType.bool,
          false,
        ),
        isCreator: deserializeParam(
          data['is_creator'],
          ParamType.bool,
          false,
        ),
        myLikeStatus: deserializeParam(
          data['my_like_status'],
          ParamType.int,
          false,
        ),
        userBoardProfile: deserializeStructParam(
          data['user_board_profile'],
          ParamType.DataStruct,
          false,
          structBuilder: UserBoardProfileStruct.fromSerializableMap,
        ),
        replies: deserializeStructParam<CommentsStruct>(
          data['replies'],
          ParamType.DataStruct,
          true,
          structBuilder: CommentsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CommentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CommentsStruct &&
        id == other.id &&
        postId == other.postId &&
        content == other.content &&
        anonym == other.anonym &&
        anonymNum == other.anonymNum &&
        parentCommentId == other.parentCommentId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        likeCount == other.likeCount &&
        dislikeCount == other.dislikeCount &&
        isBlinded == other.isBlinded &&
        repliesCount == other.repliesCount &&
        isDeleted == other.isDeleted &&
        isCreator == other.isCreator &&
        myLikeStatus == other.myLikeStatus &&
        userBoardProfile == other.userBoardProfile &&
        listEquality.equals(replies, other.replies);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        postId,
        content,
        anonym,
        anonymNum,
        parentCommentId,
        createdAt,
        updatedAt,
        likeCount,
        dislikeCount,
        isBlinded,
        repliesCount,
        isDeleted,
        isCreator,
        myLikeStatus,
        userBoardProfile,
        replies
      ]);
}

CommentsStruct createCommentsStruct({
  int? id,
  int? postId,
  String? content,
  bool? anonym,
  int? anonymNum,
  int? parentCommentId,
  int? createdAt,
  int? updatedAt,
  int? likeCount,
  int? dislikeCount,
  bool? isBlinded,
  int? repliesCount,
  bool? isDeleted,
  bool? isCreator,
  int? myLikeStatus,
  UserBoardProfileStruct? userBoardProfile,
}) =>
    CommentsStruct(
      id: id,
      postId: postId,
      content: content,
      anonym: anonym,
      anonymNum: anonymNum,
      parentCommentId: parentCommentId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      likeCount: likeCount,
      dislikeCount: dislikeCount,
      isBlinded: isBlinded,
      repliesCount: repliesCount,
      isDeleted: isDeleted,
      isCreator: isCreator,
      myLikeStatus: myLikeStatus,
      userBoardProfile: userBoardProfile ?? UserBoardProfileStruct(),
    );
