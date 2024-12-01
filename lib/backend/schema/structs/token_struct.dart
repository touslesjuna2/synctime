// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TokenStruct extends BaseStruct {
  TokenStruct({
    String? accessToken,
    String? refreshToken,
    String? tokenType,
  })  : _accessToken = accessToken,
        _refreshToken = refreshToken,
        _tokenType = tokenType;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "refresh_token" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;

  bool hasRefreshToken() => _refreshToken != null;

  // "token_type" field.
  String? _tokenType;
  String get tokenType => _tokenType ?? '';
  set tokenType(String? val) => _tokenType = val;

  bool hasTokenType() => _tokenType != null;

  static TokenStruct fromMap(Map<String, dynamic> data) => TokenStruct(
        accessToken: data['access_token'] as String?,
        refreshToken: data['refresh_token'] as String?,
        tokenType: data['token_type'] as String?,
      );

  static TokenStruct? maybeFromMap(dynamic data) =>
      data is Map ? TokenStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'access_token': _accessToken,
        'refresh_token': _refreshToken,
        'token_type': _tokenType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'access_token': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'refresh_token': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'token_type': serializeParam(
          _tokenType,
          ParamType.String,
        ),
      }.withoutNulls;

  static TokenStruct fromSerializableMap(Map<String, dynamic> data) =>
      TokenStruct(
        accessToken: deserializeParam(
          data['access_token'],
          ParamType.String,
          false,
        ),
        refreshToken: deserializeParam(
          data['refresh_token'],
          ParamType.String,
          false,
        ),
        tokenType: deserializeParam(
          data['token_type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TokenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TokenStruct &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        tokenType == other.tokenType;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([accessToken, refreshToken, tokenType]);
}

TokenStruct createTokenStruct({
  String? accessToken,
  String? refreshToken,
  String? tokenType,
}) =>
    TokenStruct(
      accessToken: accessToken,
      refreshToken: refreshToken,
      tokenType: tokenType,
    );
