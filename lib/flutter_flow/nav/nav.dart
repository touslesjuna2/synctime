import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  SynctimeAuthUser? initialUser;
  SynctimeAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(SynctimeAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const LoginmainWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const LoginmainWidget(),
          routes: [
            FFRoute(
              name: 'MainPage',
              path: 'mainPage',
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'MainPage')
                  : const MainPageWidget(),
            ),
            FFRoute(
              name: 'Timeblock',
              path: 'Timeblock',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'Timeblock')
                  : const TimeblockWidget(),
            ),
            FFRoute(
              name: 'viewBoardList',
              path: 'viewBoardList',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'viewBoardList')
                  : const ViewBoardListWidget(),
            ),
            FFRoute(
              name: 'Settings',
              path: 'settings',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'Settings')
                  : const SettingsWidget(),
            ),
            FFRoute(
              name: 'Webviewex',
              path: 'webviewex',
              builder: (context, params) => const WebviewexWidget(),
            ),
            FFRoute(
              name: 'ChangePassword',
              path: 'changePassword',
              requireAuth: true,
              builder: (context, params) => const ChangePasswordWidget(),
            ),
            FFRoute(
              name: 'ChangeEmail',
              path: 'change',
              requireAuth: true,
              builder: (context, params) => const ChangeEmailWidget(),
            ),
            FFRoute(
              name: 'ChangeNickname',
              path: 'ChangeNickname',
              requireAuth: true,
              builder: (context, params) => const ChangeNicknameWidget(),
            ),
            FFRoute(
              name: 'Change_Profile_Image',
              path: 'ChangeProfileImage',
              builder: (context, params) => const ChangeProfileImageWidget(),
            ),
            FFRoute(
              name: 'Department_settings',
              path: 'Departmentsettings',
              builder: (context, params) => const DepartmentSettingsWidget(),
            ),
            FFRoute(
              name: 'Restriction_history',
              path: 'ChangeProfileImageCopy',
              builder: (context, params) => const RestrictionHistoryWidget(),
            ),
            FFRoute(
              name: 'Keywords_of_Interset',
              path: 'KeywordsofInterset',
              builder: (context, params) => const KeywordsOfIntersetWidget(),
            ),
            FFRoute(
              name: 'Community_Rules',
              path: 'CommunityRules',
              builder: (context, params) => const CommunityRulesWidget(),
            ),
            FFRoute(
              name: 'Timeblock_list',
              path: 'timeblockList',
              builder: (context, params) => const TimeblockListWidget(),
            ),
            FFRoute(
              name: 'a_Select_School',
              path: 'aSelectSchool',
              builder: (context, params) => const ASelectSchoolWidget(),
            ),
            FFRoute(
              name: 'a_Verification_select',
              path: 'aVerificationSelect',
              builder: (context, params) => const AVerificationSelectWidget(),
            ),
            FFRoute(
              name: 'a_Forgot_Password',
              path: 'aForgotPassword',
              builder: (context, params) => const AForgotPasswordWidget(),
            ),
            FFRoute(
              name: 'b_Make_New_Password',
              path: 'bMakeNewPassword',
              builder: (context, params) => const BMakeNewPasswordWidget(),
            ),
            FFRoute(
              name: 'c_complete',
              path: 'cComplete',
              builder: (context, params) => const CCompleteWidget(),
            ),
            FFRoute(
              name: 'b1_Email_school',
              path: 'b1EmailSchool',
              builder: (context, params) => const B1EmailSchoolWidget(),
            ),
            FFRoute(
              name: 'b2_Certificate',
              path: 'b2Certificate',
              builder: (context, params) => const B2CertificateWidget(),
            ),
            FFRoute(
              name: 'c1_Verification_complete',
              path: 'c1VerificationComplete',
              builder: (context, params) => const C1VerificationCompleteWidget(),
            ),
            FFRoute(
              name: 'c2_Verification_Progress',
              path: 'c2VerificationProgress',
              builder: (context, params) => const C2VerificationProgressWidget(),
            ),
            FFRoute(
              name: 'Notification_Settings',
              path: 'NotificationSettings',
              builder: (context, params) => const NotificationSettingsWidget(),
            ),
            FFRoute(
              name: 'Passcode_lock',
              path: 'Passcode_lock',
              builder: (context, params) => const PasscodeLockWidget(),
            ),
            FFRoute(
              name: 'Notice',
              path: 'Notice',
              builder: (context, params) => const NoticeWidget(),
            ),
            FFRoute(
              name: 'FAQ',
              path: 'FAQ',
              builder: (context, params) => const FaqWidget(),
            ),
            FFRoute(
              name: 'Terms_of_sevice',
              path: 'Terms_of_sevice',
              builder: (context, params) => const TermsOfSeviceWidget(),
            ),
            FFRoute(
              name: 'Privacy_policy',
              path: 'Privacy_policy',
              builder: (context, params) => const PrivacyPolicyWidget(),
            ),
            FFRoute(
              name: 'Youth_protection_policy',
              path: 'Youth_protection_policy',
              builder: (context, params) => const YouthProtectionPolicyWidget(),
            ),
            FFRoute(
              name: 'Agreement_settings',
              path: 'Agreement_settings',
              builder: (context, params) => const AgreementSettingsWidget(),
            ),
            FFRoute(
              name: 'Delete_account',
              path: 'Delete_account',
              builder: (context, params) => const DeleteAccountWidget(),
            ),
            FFRoute(
              name: 'Enable_passcode',
              path: 'Enable_passcode',
              builder: (context, params) => const EnablePasscodeWidget(),
            ),
            FFRoute(
              name: 'Loginmain',
              path: 'loginmain',
              builder: (context, params) => LoginmainWidget(
                code: params.getParam(
                  'code',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'f_Verification_inquiry',
              path: 'fVerificationInquiry',
              builder: (context, params) => const FVerificationInquiryWidget(),
            ),
            FFRoute(
              name: 'Loginmain_Email',
              path: 'loginmainEmail',
              builder: (context, params) => const LoginmainEmailWidget(),
            ),
            FFRoute(
              name: 'a_profile',
              path: 'aProfile',
              builder: (context, params) => const AProfileWidget(),
            ),
            FFRoute(
              name: 'viewBoard',
              path: 'viewBoard',
              builder: (context, params) => ViewBoardWidget(
                boardid: params.getParam(
                  'boardid',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'createPost',
              path: 'createPost',
              builder: (context, params) => const CreatePostWidget(),
            ),
            FFRoute(
              name: 'createBoard',
              path: 'createBoard',
              builder: (context, params) => const CreateBoardWidget(),
            ),
            FFRoute(
              name: 'viewPost',
              path: 'viewPost',
              builder: (context, params) => const ViewPostWidget(),
            ),
            FFRoute(
              name: 'searchPost',
              path: 'searchPost',
              builder: (context, params) => const SearchPostWidget(),
            ),
            FFRoute(
              name: 'searchBoard',
              path: 'searchBoard',
              builder: (context, params) => const SearchBoardWidget(),
            ),
            FFRoute(
              name: 'viewMyBoard',
              path: 'viewMyBoard',
              builder: (context, params) => const ViewMyBoardWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/loginmain';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
