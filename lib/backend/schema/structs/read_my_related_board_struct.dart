// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReadMyRelatedBoardStruct extends BaseStruct {
  ReadMyRelatedBoardStruct({
    int? id,
    int? univId,
    int? boardId,
    String? title,
    String? content,
    bool? anonym,
    List<TagsStruct>? tags,
    bool? qna,
    int? createdAt,
    int? updatedAt,
    bool? idBlinded,
    int? likeCount,
    int? dislikeCount,
    int? scrapCount,
    int? commentCount,
    String? sentiment,
    int? hottedAt,
    List<MediaStruct>? media,
    UserBoardProfileStruct? userBoardProfile,
  })  : _id = id,
        _univId = univId,
        _boardId = boardId,
        _title = title,
        _content = content,
        _anonym = anonym,
        _tags = tags,
        _qna = qna,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _idBlinded = idBlinded,
        _likeCount = likeCount,
        _dislikeCount = dislikeCount,
        _scrapCount = scrapCount,
        _commentCount = commentCount,
        _sentiment = sentiment,
        _hottedAt = hottedAt,
        _media = media,
        _userBoardProfile = userBoardProfile;

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

  // "board_id" field.
  int? _boardId;
  int get boardId => _boardId ?? 0;
  set boardId(int? val) => _boardId = val;

  void incrementBoardId(int amount) => boardId = boardId + amount;

  bool hasBoardId() => _boardId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

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

  // "tags" field.
  List<TagsStruct>? _tags;
  List<TagsStruct> get tags => _tags ?? const [];
  set tags(List<TagsStruct>? val) => _tags = val;

  void updateTags(Function(List<TagsStruct>) updateFn) {
    updateFn(_tags ??= []);
  }

  bool hasTags() => _tags != null;

  // "qna" field.
  bool? _qna;
  bool get qna => _qna ?? false;
  set qna(bool? val) => _qna = val;

  bool hasQna() => _qna != null;

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

  // "id_blinded" field.
  bool? _idBlinded;
  bool get idBlinded => _idBlinded ?? false;
  set idBlinded(bool? val) => _idBlinded = val;

  bool hasIdBlinded() => _idBlinded != null;

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

  // "scrap_count" field.
  int? _scrapCount;
  int get scrapCount => _scrapCount ?? 0;
  set scrapCount(int? val) => _scrapCount = val;

  void incrementScrapCount(int amount) => scrapCount = scrapCount + amount;

  bool hasScrapCount() => _scrapCount != null;

  // "comment_count" field.
  int? _commentCount;
  int get commentCount => _commentCount ?? 0;
  set commentCount(int? val) => _commentCount = val;

  void incrementCommentCount(int amount) =>
      commentCount = commentCount + amount;

  bool hasCommentCount() => _commentCount != null;

  // "sentiment" field.
  String? _sentiment;
  String get sentiment => _sentiment ?? '';
  set sentiment(String? val) => _sentiment = val;

  bool hasSentiment() => _sentiment != null;

  // "hotted_at" field.
  int? _hottedAt;
  int get hottedAt => _hottedAt ?? 0;
  set hottedAt(int? val) => _hottedAt = val;

  void incrementHottedAt(int amount) => hottedAt = hottedAt + amount;

  bool hasHottedAt() => _hottedAt != null;

  // "media" field.
  List<MediaStruct>? _media;
  List<MediaStruct> get media => _media ?? const [];
  set media(List<MediaStruct>? val) => _media = val;

  void updateMedia(Function(List<MediaStruct>) updateFn) {
    updateFn(_media ??= []);
  }

  bool hasMedia() => _media != null;

  // "user_board_profile" field.
  UserBoardProfileStruct? _userBoardProfile;
  UserBoardProfileStruct get userBoardProfile =>
      _userBoardProfile ?? UserBoardProfileStruct();
  set userBoardProfile(UserBoardProfileStruct? val) => _userBoardProfile = val;

  void updateUserBoardProfile(Function(UserBoardProfileStruct) updateFn) {
    updateFn(_userBoardProfile ??= UserBoardProfileStruct());
  }

  bool hasUserBoardProfile() => _userBoardProfile != null;

  static ReadMyRelatedBoardStruct fromMap(Map<String, dynamic> data) =>
      ReadMyRelatedBoardStruct(
        id: castToType<int>(data['id']),
        univId: castToType<int>(data['univ_id']),
        boardId: castToType<int>(data['board_id']),
        title: data['title'] as String?,
        content: data['content'] as String?,
        anonym: data['anonym'] as bool?,
        tags: getStructList(
          data['tags'],
          TagsStruct.fromMap,
        ),
        qna: data['qna'] as bool?,
        createdAt: castToType<int>(data['created_at']),
        updatedAt: castToType<int>(data['updated_at']),
        idBlinded: data['id_blinded'] as bool?,
        likeCount: castToType<int>(data['like_count']),
        dislikeCount: castToType<int>(data['dislike_count']),
        scrapCount: castToType<int>(data['scrap_count']),
        commentCount: castToType<int>(data['comment_count']),
        sentiment: data['sentiment'] as String?,
        hottedAt: castToType<int>(data['hotted_at']),
        media: getStructList(
          data['media'],
          MediaStruct.fromMap,
        ),
        userBoardProfile:
            UserBoardProfileStruct.maybeFromMap(data['user_board_profile']),
      );

  static ReadMyRelatedBoardStruct? maybeFromMap(dynamic data) => data is Map
      ? ReadMyRelatedBoardStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'univ_id': _univId,
        'board_id': _boardId,
        'title': _title,
        'content': _content,
        'anonym': _anonym,
        'tags': _tags?.map((e) => e.toMap()).toList(),
        'qna': _qna,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'id_blinded': _idBlinded,
        'like_count': _likeCount,
        'dislike_count': _dislikeCount,
        'scrap_count': _scrapCount,
        'comment_count': _commentCount,
        'sentiment': _sentiment,
        'hotted_at': _hottedAt,
        'media': _media?.map((e) => e.toMap()).toList(),
        'user_board_profile': _userBoardProfile?.toMap(),
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
        'board_id': serializeParam(
          _boardId,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'anonym': serializeParam(
          _anonym,
          ParamType.bool,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.DataStruct,
          isList: true,
        ),
        'qna': serializeParam(
          _qna,
          ParamType.bool,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.int,
        ),
        'id_blinded': serializeParam(
          _idBlinded,
          ParamType.bool,
        ),
        'like_count': serializeParam(
          _likeCount,
          ParamType.int,
        ),
        'dislike_count': serializeParam(
          _dislikeCount,
          ParamType.int,
        ),
        'scrap_count': serializeParam(
          _scrapCount,
          ParamType.int,
        ),
        'comment_count': serializeParam(
          _commentCount,
          ParamType.int,
        ),
        'sentiment': serializeParam(
          _sentiment,
          ParamType.String,
        ),
        'hotted_at': serializeParam(
          _hottedAt,
          ParamType.int,
        ),
        'media': serializeParam(
          _media,
          ParamType.DataStruct,
          isList: true,
        ),
        'user_board_profile': serializeParam(
          _userBoardProfile,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ReadMyRelatedBoardStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReadMyRelatedBoardStruct(
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
        boardId: deserializeParam(
          data['board_id'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
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
        tags: deserializeStructParam<TagsStruct>(
          data['tags'],
          ParamType.DataStruct,
          true,
          structBuilder: TagsStruct.fromSerializableMap,
        ),
        qna: deserializeParam(
          data['qna'],
          ParamType.bool,
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
        idBlinded: deserializeParam(
          data['id_blinded'],
          ParamType.bool,
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
        scrapCount: deserializeParam(
          data['scrap_count'],
          ParamType.int,
          false,
        ),
        commentCount: deserializeParam(
          data['comment_count'],
          ParamType.int,
          false,
        ),
        sentiment: deserializeParam(
          data['sentiment'],
          ParamType.String,
          false,
        ),
        hottedAt: deserializeParam(
          data['hotted_at'],
          ParamType.int,
          false,
        ),
        media: deserializeStructParam<MediaStruct>(
          data['media'],
          ParamType.DataStruct,
          true,
          structBuilder: MediaStruct.fromSerializableMap,
        ),
        userBoardProfile: deserializeStructParam(
          data['user_board_profile'],
          ParamType.DataStruct,
          false,
          structBuilder: UserBoardProfileStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ReadMyRelatedBoardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ReadMyRelatedBoardStruct &&
        id == other.id &&
        univId == other.univId &&
        boardId == other.boardId &&
        title == other.title &&
        content == other.content &&
        anonym == other.anonym &&
        listEquality.equals(tags, other.tags) &&
        qna == other.qna &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        idBlinded == other.idBlinded &&
        likeCount == other.likeCount &&
        dislikeCount == other.dislikeCount &&
        scrapCount == other.scrapCount &&
        commentCount == other.commentCount &&
        sentiment == other.sentiment &&
        hottedAt == other.hottedAt &&
        listEquality.equals(media, other.media) &&
        userBoardProfile == other.userBoardProfile;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        univId,
        boardId,
        title,
        content,
        anonym,
        tags,
        qna,
        createdAt,
        updatedAt,
        idBlinded,
        likeCount,
        dislikeCount,
        scrapCount,
        commentCount,
        sentiment,
        hottedAt,
        media,
        userBoardProfile
      ]);
}

ReadMyRelatedBoardStruct createReadMyRelatedBoardStruct({
  int? id,
  int? univId,
  int? boardId,
  String? title,
  String? content,
  bool? anonym,
  bool? qna,
  int? createdAt,
  int? updatedAt,
  bool? idBlinded,
  int? likeCount,
  int? dislikeCount,
  int? scrapCount,
  int? commentCount,
  String? sentiment,
  int? hottedAt,
  UserBoardProfileStruct? userBoardProfile,
}) =>
    ReadMyRelatedBoardStruct(
      id: id,
      univId: univId,
      boardId: boardId,
      title: title,
      content: content,
      anonym: anonym,
      qna: qna,
      createdAt: createdAt,
      updatedAt: updatedAt,
      idBlinded: idBlinded,
      likeCount: likeCount,
      dislikeCount: dislikeCount,
      scrapCount: scrapCount,
      commentCount: commentCount,
      sentiment: sentiment,
      hottedAt: hottedAt,
      userBoardProfile: userBoardProfile ?? UserBoardProfileStruct(),
    );
