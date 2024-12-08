import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Auth Group Code

class AuthGroup {
  static String getBaseUrl() => 'https://www.hilbert2024.site/auth/';
  static Map<String, String> headers = {};
  static RegisterRequestLoginIDVerificationCall
      registerRequestLoginIDVerificationCall =
      RegisterRequestLoginIDVerificationCall();
  static MeChangePasswordCall meChangePasswordCall = MeChangePasswordCall();
  static RegisterCheckUsernameCall registerCheckUsernameCall =
      RegisterCheckUsernameCall();
  static UnivsCall univsCall = UnivsCall();
  static RegisterCheckLoginIDCall registerCheckLoginIDCall =
      RegisterCheckLoginIDCall();
  static VerifyLoginIDCall verifyLoginIDCall = VerifyLoginIDCall();
  static RegisterCall registerCall = RegisterCall();
  static GoogleTokenCall googleTokenCall = GoogleTokenCall();
  static TokenCall tokenCall = TokenCall();
  static LogoutCall logoutCall = LogoutCall();
  static RefreshCall refreshCall = RefreshCall();
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

class UnivsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Univs',
      apiUrl: '${baseUrl}univs',
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

class GoogleTokenCall {
  Future<ApiCallResponse> call({
    String? code = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Google Token',
      apiUrl: '${baseUrl}google/token?code=$code',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
      },
      params: {
        'code': code,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic accesstoken(dynamic response) => getJsonField(
        response,
        r'''$.access_token''',
      );
  dynamic refreshtoken(dynamic response) => getJsonField(
        response,
        r'''$.refresh_token''',
      );
  dynamic tokentype(dynamic response) => getJsonField(
        response,
        r'''$.token_type''',
      );
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

class RefreshCall {
  Future<ApiCallResponse> call({
    String? refreshToken = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Refresh',
      apiUrl: '${baseUrl}refresh',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'refresh-token': '$refreshToken',
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

  String? accesstoken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  String? refreshtoken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.refresh_token''',
      ));
  String? tokentype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token_type''',
      ));
}

/// End Auth Group Code

/// Start Communiy Univ ID Group Code

class CommuniyUnivIDGroup {
  static String getBaseUrl({
    String? accessToken = '',
    int? univId,
  }) =>
      'https://www.hilbert2024.site/community/$univId/';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'Authorization': 'Bearer [access_token]',
  };
  static UnividBoardsREADCall unividBoardsREADCall = UnividBoardsREADCall();
  static UnividBoardsCREATECall unividBoardsCREATECall =
      UnividBoardsCREATECall();
  static UnividBoardsBoardIdREADCall unividBoardsBoardIdREADCall =
      UnividBoardsBoardIdREADCall();
  static UnividBoardsBoardIdDELETECall unividBoardsBoardIdDELETECall =
      UnividBoardsBoardIdDELETECall();
  static UnividBoardsBoardIdPUTCall unividBoardsBoardIdPUTCall =
      UnividBoardsBoardIdPUTCall();
  static UnividBoardsBoardIdTransferManagerCall
      unividBoardsBoardIdTransferManagerCall =
      UnividBoardsBoardIdTransferManagerCall();
  static UnividBoardsBoardIdAcceptManagerCall
      unividBoardsBoardIdAcceptManagerCall =
      UnividBoardsBoardIdAcceptManagerCall();
  static UnividBoardsBoardIdNoticeCall unividBoardsBoardIdNoticeCall =
      UnividBoardsBoardIdNoticeCall();
  static UnividBoardsBoardIdNoticeDELETECall
      unividBoardsBoardIdNoticeDELETECall =
      UnividBoardsBoardIdNoticeDELETECall();
  static UnividNoticePostsBoardidCall unividNoticePostsBoardidCall =
      UnividNoticePostsBoardidCall();
  static UnividHotPostBoardIDCall unividHotPostBoardIDCall =
      UnividHotPostBoardIDCall();
  static UnividHotPostCall unividHotPostCall = UnividHotPostCall();
}

class UnividBoardsREADCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    int? univId,
  }) async {
    final baseUrl = CommuniyUnivIDGroup.getBaseUrl(
      accessToken: accessToken,
      univId: univId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'univid Boards READ',
      apiUrl: '${baseUrl}boards',
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

class UnividBoardsCREATECall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    bool? anonym = true,
    String? boardType = '',
    bool? qna,
    List<String>? requireTagsList,
    String? rules = '',
    String? accessToken = '',
    int? univId,
  }) async {
    final baseUrl = CommuniyUnivIDGroup.getBaseUrl(
      accessToken: accessToken,
      univId: univId,
    );
    final requireTags = _serializeList(requireTagsList);

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "description": "${escapeStringForJson(description)}",
  "anonym": $anonym,
  "board_type": "${escapeStringForJson(boardType)}",
  "qna": $qna,
  "require_tags": $requireTags,
  "rules": "${escapeStringForJson(rules)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'univid Boards CREATE',
      apiUrl: '${baseUrl}boards',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class UnividBoardsBoardIdREADCall {
  Future<ApiCallResponse> call({
    String? boardId = '',
    String? accessToken = '',
    int? univId,
  }) async {
    final baseUrl = CommuniyUnivIDGroup.getBaseUrl(
      accessToken: accessToken,
      univId: univId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'univid Boards BoardId READ',
      apiUrl: '${baseUrl}boards/$boardId',
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

class UnividBoardsBoardIdDELETECall {
  Future<ApiCallResponse> call({
    String? boardId = '',
    String? accessToken = '',
    int? univId,
  }) async {
    final baseUrl = CommuniyUnivIDGroup.getBaseUrl(
      accessToken: accessToken,
      univId: univId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'univid Boards BoardId DELETE',
      apiUrl: '${baseUrl}boards/$boardId',
      callType: ApiCallType.DELETE,
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

class UnividBoardsBoardIdPUTCall {
  Future<ApiCallResponse> call({
    String? boardId = '',
    String? accessToken = '',
    int? univId,
  }) async {
    final baseUrl = CommuniyUnivIDGroup.getBaseUrl(
      accessToken: accessToken,
      univId: univId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'univid Boards BoardId PUT',
      apiUrl: '${baseUrl}boards/$boardId',
      callType: ApiCallType.PUT,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class UnividBoardsBoardIdTransferManagerCall {
  Future<ApiCallResponse> call({
    String? boardId = '',
    String? accessToken = '',
    int? univId,
  }) async {
    final baseUrl = CommuniyUnivIDGroup.getBaseUrl(
      accessToken: accessToken,
      univId: univId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'univid Boards BoardId TransferManager',
      apiUrl: '${baseUrl}boards/$boardId/transfer-manager',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class UnividBoardsBoardIdAcceptManagerCall {
  Future<ApiCallResponse> call({
    String? boardId = '',
    String? accessToken = '',
    int? univId,
  }) async {
    final baseUrl = CommuniyUnivIDGroup.getBaseUrl(
      accessToken: accessToken,
      univId: univId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'univid Boards BoardId AcceptManager',
      apiUrl: '${baseUrl}boards/$boardId/accept-manager',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class UnividBoardsBoardIdNoticeCall {
  Future<ApiCallResponse> call({
    String? boardId = '',
    String? accessToken = '',
    int? univId,
  }) async {
    final baseUrl = CommuniyUnivIDGroup.getBaseUrl(
      accessToken: accessToken,
      univId: univId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'univid Boards BoardId Notice',
      apiUrl: '${baseUrl}boards/$boardId/notice',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class UnividBoardsBoardIdNoticeDELETECall {
  Future<ApiCallResponse> call({
    String? boardId = '',
    String? accessToken = '',
    int? univId,
  }) async {
    final baseUrl = CommuniyUnivIDGroup.getBaseUrl(
      accessToken: accessToken,
      univId: univId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'univid Boards BoardId Notice DELETE',
      apiUrl: '${baseUrl}boards/$boardId/notice',
      callType: ApiCallType.DELETE,
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

class UnividNoticePostsBoardidCall {
  Future<ApiCallResponse> call({
    String? boardId = '',
    String? accessToken = '',
    int? univId,
  }) async {
    final baseUrl = CommuniyUnivIDGroup.getBaseUrl(
      accessToken: accessToken,
      univId: univId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'univid NoticePosts Boardid',
      apiUrl: '${baseUrl}notice-posts/$boardId',
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

class UnividHotPostBoardIDCall {
  Future<ApiCallResponse> call({
    String? boardId = '',
    String? accessToken = '',
    int? univId,
  }) async {
    final baseUrl = CommuniyUnivIDGroup.getBaseUrl(
      accessToken: accessToken,
      univId: univId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'univid HotPost BoardID ',
      apiUrl: '${baseUrl}hot-posts/$boardId',
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

class UnividHotPostCall {
  Future<ApiCallResponse> call({
    String? boardId = '',
    String? accessToken = '',
    int? univId,
  }) async {
    final baseUrl = CommuniyUnivIDGroup.getBaseUrl(
      accessToken: accessToken,
      univId: univId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'univid HotPost',
      apiUrl: '${baseUrl}hot-posts',
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

/// End Communiy Univ ID Group Code

/// Start Users Group Code

class UsersGroup {
  static String getBaseUrl({
    String? accessToken = '',
  }) =>
      'https://www.hilbert2024.site/users/';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'Authorization': 'Bearer [access_token]',
  };
  static MeCall meCall = MeCall();
  static MeUPDATECall meUPDATECall = MeUPDATECall();
  static DeleteAccountCall deleteAccountCall = DeleteAccountCall();
  static DeleteAccountGoogleCall deleteAccountGoogleCall =
      DeleteAccountGoogleCall();
  static DisableAccountCall disableAccountCall = DisableAccountCall();
  static DisableAccountGoogleCall disableAccountGoogleCall =
      DisableAccountGoogleCall();
  static DeleteAccountAppleCall deleteAccountAppleCall =
      DeleteAccountAppleCall();
  static DisableAccountAppleCall disableAccountAppleCall =
      DisableAccountAppleCall();
  static ActivateAccountCall activateAccountCall = ActivateAccountCall();
  static ActivateAccountGoogleCall activateAccountGoogleCall =
      ActivateAccountGoogleCall();
  static ActivateAccountAppleCall activateAccountAppleCall =
      ActivateAccountAppleCall();
  static MeActivityCall meActivityCall = MeActivityCall();
  static MeActivityUPDATECall meActivityUPDATECall = MeActivityUPDATECall();
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

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? loginid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.login_id''',
      ));
  String? fullname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.full_name''',
      ));
  int? univid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.univ_id''',
      ));
  String? schoolemail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.school_email''',
      ));
  String? academicstatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.academic_status''',
      ));
  String? userstatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_status''',
      ));
  String? studentid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.student_id''',
      ));
  String? major(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.major''',
      ));
  dynamic password(dynamic response) => getJsonField(
        response,
        r'''$.password''',
      );
}

class MeUPDATECall {
  Future<ApiCallResponse> call({
    String? fullName = '',
    String? academicStatus = '',
    String? studentId = '',
    String? major = '',
    String? accessToken = '',
  }) async {
    final baseUrl = UsersGroup.getBaseUrl(
      accessToken: accessToken,
    );

    final ffApiRequestBody = '''
{
  "full_name": "${escapeStringForJson(fullName)}",
  "academic_status": "${escapeStringForJson(academicStatus)}",
  "student_id": "${escapeStringForJson(studentId)}",
  "major": "${escapeStringForJson(major)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'me UPDATE',
      apiUrl: '${baseUrl}me',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class DeleteAccountCall {
  Future<ApiCallResponse> call({
    String? password = '',
    String? accessToken = '',
  }) async {
    final baseUrl = UsersGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Account',
      apiUrl: '${baseUrl}delete-account',
      callType: ApiCallType.DELETE,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class DeleteAccountGoogleCall {
  Future<ApiCallResponse> call({
    String? code = '',
    String? accessToken = '',
  }) async {
    final baseUrl = UsersGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Account Google',
      apiUrl: '${baseUrl}delete-account/google/?code=$code',
      callType: ApiCallType.DELETE,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'code': code,
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

class DisableAccountCall {
  Future<ApiCallResponse> call({
    String? password = '',
    String? accessToken = '',
  }) async {
    final baseUrl = UsersGroup.getBaseUrl(
      accessToken: accessToken,
    );

    final ffApiRequestBody = '''
{
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Disable Account',
      apiUrl: '${baseUrl}disable-account',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'Application/json',
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

class DisableAccountGoogleCall {
  Future<ApiCallResponse> call({
    String? code = '',
    String? accessToken = '',
  }) async {
    final baseUrl = UsersGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Disable Account Google',
      apiUrl: '${baseUrl}disable-account/google',
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

class DeleteAccountAppleCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = UsersGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Account Apple',
      apiUrl: '${baseUrl}delete-account/apple',
      callType: ApiCallType.DELETE,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class DisableAccountAppleCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = UsersGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Disable Account Apple',
      apiUrl: '${baseUrl}disable-account/apple',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'ContentType': 'application/json',
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

class ActivateAccountCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = UsersGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Activate Account',
      apiUrl: '${baseUrl}activate-account',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Contnent-Type': 'application/json',
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

class ActivateAccountGoogleCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = UsersGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Activate Account Google',
      apiUrl: '${baseUrl}activate-account/google',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'Application/json',
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

class ActivateAccountAppleCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = UsersGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Activate Account Apple',
      apiUrl: '${baseUrl}activate-account/apple',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'Application/json',
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

class MeActivityCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = UsersGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Me Activity',
      apiUrl: '${baseUrl}me/activity',
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

class MeActivityUPDATECall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = UsersGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Me Activity UPDATE',
      apiUrl: '${baseUrl}me/activity',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'Application/json',
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

/// End Users Group Code

/// Start Auth Register School Group Code

class AuthRegisterSchoolGroup {
  static String getBaseUrl({
    String? accessToken = '',
  }) =>
      'https://www.hilbert2024.site/auth/register-school/';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static CheckSchoolEmailCall checkSchoolEmailCall = CheckSchoolEmailCall();
  static RequestSchoolEmailVerificationCall requestSchoolEmailVerificationCall =
      RequestSchoolEmailVerificationCall();
  static VerifySchoolEmailCall verifySchoolEmailCall = VerifySchoolEmailCall();
}

class CheckSchoolEmailCall {
  Future<ApiCallResponse> call({
    String? email = '',
    int? univId,
    String? accessToken = '',
  }) async {
    final baseUrl = AuthRegisterSchoolGroup.getBaseUrl(
      accessToken: accessToken,
    );

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "univ_id": $univId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Check School Email',
      apiUrl: '${baseUrl}check/school-email',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class RequestSchoolEmailVerificationCall {
  Future<ApiCallResponse> call({
    String? email = '',
    int? univId,
    String? accessToken = '',
  }) async {
    final baseUrl = AuthRegisterSchoolGroup.getBaseUrl(
      accessToken: accessToken,
    );

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "univ_id": $univId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Request School Email Verification',
      apiUrl: '${baseUrl}request-school-email-verification',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class VerifySchoolEmailCall {
  Future<ApiCallResponse> call({
    String? email = '',
    int? univId,
    String? verificationCode = '',
    String? accessToken = '',
  }) async {
    final baseUrl = AuthRegisterSchoolGroup.getBaseUrl(
      accessToken: accessToken,
    );

    final ffApiRequestBody = '''
{
  "email": {
    "email": "${escapeStringForJson(email)}",
    "univ_id": $univId
  },
  "verification_code": {
    "verification_code": "${escapeStringForJson(verificationCode)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify School Email',
      apiUrl: '${baseUrl}verify-school-email',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

/// End Auth Register School Group Code

/// Start Community Group Code

class CommunityGroup {
  static String getBaseUrl({
    String? accessToken = '',
  }) =>
      'https://www.hilbert2024.site/community/';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'Authorization': 'Bearer [access_token}',
  };
}

/// End Community Group Code

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
