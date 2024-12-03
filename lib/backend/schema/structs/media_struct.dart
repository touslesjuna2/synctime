// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MediaStruct extends BaseStruct {
  MediaStruct({
    int? id,
    int? postId,
    String? mediaType,
    String? mediaUrl,
  })  : _id = id,
        _postId = postId,
        _mediaType = mediaType,
        _mediaUrl = mediaUrl;

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

  // "media_type" field.
  String? _mediaType;
  String get mediaType => _mediaType ?? '';
  set mediaType(String? val) => _mediaType = val;

  bool hasMediaType() => _mediaType != null;

  // "media_url" field.
  String? _mediaUrl;
  String get mediaUrl => _mediaUrl ?? '';
  set mediaUrl(String? val) => _mediaUrl = val;

  bool hasMediaUrl() => _mediaUrl != null;

  static MediaStruct fromMap(Map<String, dynamic> data) => MediaStruct(
        id: castToType<int>(data['id']),
        postId: castToType<int>(data['post_id']),
        mediaType: data['media_type'] as String?,
        mediaUrl: data['media_url'] as String?,
      );

  static MediaStruct? maybeFromMap(dynamic data) =>
      data is Map ? MediaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'post_id': _postId,
        'media_type': _mediaType,
        'media_url': _mediaUrl,
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
        'media_type': serializeParam(
          _mediaType,
          ParamType.String,
        ),
        'media_url': serializeParam(
          _mediaUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static MediaStruct fromSerializableMap(Map<String, dynamic> data) =>
      MediaStruct(
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
        mediaType: deserializeParam(
          data['media_type'],
          ParamType.String,
          false,
        ),
        mediaUrl: deserializeParam(
          data['media_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MediaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MediaStruct &&
        id == other.id &&
        postId == other.postId &&
        mediaType == other.mediaType &&
        mediaUrl == other.mediaUrl;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, postId, mediaType, mediaUrl]);
}

MediaStruct createMediaStruct({
  int? id,
  int? postId,
  String? mediaType,
  String? mediaUrl,
}) =>
    MediaStruct(
      id: id,
      postId: postId,
      mediaType: mediaType,
      mediaUrl: mediaUrl,
    );
