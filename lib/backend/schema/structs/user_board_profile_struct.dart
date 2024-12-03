// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserBoardProfileStruct extends BaseStruct {
  UserBoardProfileStruct({
    String? nickname,
    String? imageUrl,
  })  : _nickname = nickname,
        _imageUrl = imageUrl;

  // "nickname" field.
  String? _nickname;
  String get nickname => _nickname ?? '';
  set nickname(String? val) => _nickname = val;

  bool hasNickname() => _nickname != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  static UserBoardProfileStruct fromMap(Map<String, dynamic> data) =>
      UserBoardProfileStruct(
        nickname: data['nickname'] as String?,
        imageUrl: data['image_url'] as String?,
      );

  static UserBoardProfileStruct? maybeFromMap(dynamic data) => data is Map
      ? UserBoardProfileStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nickname': _nickname,
        'image_url': _imageUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nickname': serializeParam(
          _nickname,
          ParamType.String,
        ),
        'image_url': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserBoardProfileStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserBoardProfileStruct(
        nickname: deserializeParam(
          data['nickname'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['image_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserBoardProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserBoardProfileStruct &&
        nickname == other.nickname &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([nickname, imageUrl]);
}

UserBoardProfileStruct createUserBoardProfileStruct({
  String? nickname,
  String? imageUrl,
}) =>
    UserBoardProfileStruct(
      nickname: nickname,
      imageUrl: imageUrl,
    );
