import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Auth Group Code

class AuthGroup {
  static String getBaseUrl() =>
      'http://ec2-18-191-211-86.us-east-2.compute.amazonaws.com/auth/';
  static Map<String, String> headers = {};
  static RegisterRequestLoginIDVerificationCall
      registerRequestLoginIDVerificationCall =
      RegisterRequestLoginIDVerificationCall();
  static MeChangePasswordCall meChangePasswordCall = MeChangePasswordCall();
  static RegisterCheckUsernameCall registerCheckUsernameCall =
      RegisterCheckUsernameCall();
  static RegisterUnivsCall registerUnivsCall = RegisterUnivsCall();
  static RegisterCheckLoginIDCall registerCheckLoginIDCall =
      RegisterCheckLoginIDCall();
  static VerifyLoginIDCall verifyLoginIDCall = VerifyLoginIDCall();
  static RegisterCall registerCall = RegisterCall();
  static GoogleLoginCall googleLoginCall = GoogleLoginCall();
  static TokenCall tokenCall = TokenCall();
  static LogoutCall logoutCall = LogoutCall();
}

class RegisterRequestLoginIDVerificationCall {
  Future<ApiCallResponse> call({
    String? loginId = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "login_id": "${escapeStringForJson(loginId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register RequestLoginIDVerification',
      apiUrl: '${baseUrl}register/request-login-id-verification',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MeChangePasswordCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Me ChangePassword',
      apiUrl: '${baseUrl}me/change-password',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterCheckUsernameCall {
  Future<ApiCallResponse> call({
    String? username = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Register Check Username',
      apiUrl: '${baseUrl}register/check/username?username=$username',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? duplicatedCheck(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_duplicated''',
      ));
}

class RegisterUnivsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Register Univs',
      apiUrl: '${baseUrl}register/univs',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? countiryCode(dynamic response) => (getJsonField(
        response,
        r'''$[:].country_code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class RegisterCheckLoginIDCall {
  Future<ApiCallResponse> call({
    String? loginId = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Register Check Login ID',
      apiUrl: '${baseUrl}register/check/login-id?login_id=$loginId',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? duplicated(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_duplicated''',
      ));
}

class VerifyLoginIDCall {
  Future<ApiCallResponse> call({
    String? loginId = '',
    String? verificationCd = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "login_id": {
    "login_id": "${escapeStringForJson(loginId)}"
  },
  "verification_code": {
    "verification_code": "${escapeStringForJson(verificationCd)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify Login ID',
      apiUrl: '${baseUrl}register/verify-login-id',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterCall {
  Future<ApiCallResponse> call({
    String? loginId = '',
    String? password = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "login_id": "${escapeStringForJson(loginId)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiUrl: '${baseUrl}register',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GoogleLoginCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Google Login',
      apiUrl: '${baseUrl}google/login',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TokenCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Token',
      apiUrl: '${baseUrl}token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'grant_type': "password",
        'username': username,
        'password': password,
        'scope': "aa",
        'client_id': "aa",
        'client_secret': "aa",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? access(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  String? refresh(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.refresh_token''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token_type''',
      ));
}

class LogoutCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Logout',
      apiUrl: '${baseUrl}logout',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Auth Group Code

/// Start Community Group Code

class CommunityGroup {
  static String getBaseUrl({
    String? accessToken = '',
  }) =>
      'http://ec2-18-191-211-86.us-east-2.compute.amazonaws.com/community/';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'Authorization': 'Bearer [access_token]',
  };
  static UnividBoardCall unividBoardCall = UnividBoardCall();
}

class UnividBoardCall {
  Future<ApiCallResponse> call({
    String? univId = '',
    String? accessToken = '',
  }) async {
    final baseUrl = CommunityGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'univid Board',
      apiUrl: '$baseUrl$univId/boards',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'univ_id': univId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Community Group Code

/// Start Users Group Code

class UsersGroup {
  static String getBaseUrl({
    String? accessToken = '',
  }) =>
      'http://ec2-18-191-211-86.us-east-2.compute.amazonaws.com/users/';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'Authorization': 'Bearer [access_token]',
  };
  static MeCall meCall = MeCall();
}

class MeCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = UsersGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'me',
      apiUrl: '${baseUrl}me',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Users Group Code

class ExampleProductsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ExampleProducts',
      apiUrl: 'https://dummyjson.com/products',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? image(dynamic response) => getJsonField(
        response,
        r'''$.products[:].images''',
        true,
      ) as List?;
  static List<int>? price(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
