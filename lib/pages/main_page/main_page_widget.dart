import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/alert_general_c_m_p/alert_general_c_m_p_widget.dart';
import '/components/no_auth_c_m_p/no_auth_c_m_p_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'main_page_model.dart';
export 'main_page_model.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({super.key});

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  late MainPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'MainPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('MAIN_PAGE_PAGE_MainPage_ON_INIT_STATE');
      logFirebaseEvent('MainPage_backend_call');
      _model.rerefresh = await AuthGroup.refreshCall.call(
        refreshToken: currentAuthRefreshToken,
      );

      if ((_model.rerefresh?.succeeded ?? true)) {
        logFirebaseEvent('MainPage_auth');
        authManager.updateAuthUserData(
          authenticationToken: AuthGroup.refreshCall.accesstoken(
            (_model.rerefresh?.jsonBody ?? ''),
          ),
          refreshToken: AuthGroup.refreshCall.refreshtoken(
            (_model.rerefresh?.jsonBody ?? ''),
          ),
        );
      } else {
        logFirebaseEvent('MainPage_alert_dialog');
        await showDialog(
          context: context,
          builder: (dialogContext) {
            return Dialog(
              elevation: 0,
              insetPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              alignment: const AlignmentDirectional(0.0, 0.0)
                  .resolve(Directionality.of(context)),
              child: WebViewAware(
                child: GestureDetector(
                  onTap: () {
                    FocusScope.of(dialogContext).unfocus();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: const AlertGeneralCMPWidget(
                    alertmessage: 'Auth 토큰 문제',
                  ),
                ),
              ),
            );
          },
        );
      }

      logFirebaseEvent('MainPage_backend_call');
      _model.usermeMain = await UsersGroup.meCall.call(
        accessToken: currentAuthenticationToken,
      );

      if ((_model.usermeMain?.succeeded ?? true)) {
        logFirebaseEvent('MainPage_update_app_state');
        FFAppState().id = 0;
        FFAppState().loginid = '';
        FFAppState().fullname = '';
        FFAppState().univid = 0;
        FFAppState().schoolemail = '';
        FFAppState().academicstatus = '';
        FFAppState().userstatus = '';
        FFAppState().studentid = '';
        FFAppState().major = '';
        FFAppState().password = '';
        safeSetState(() {});
        logFirebaseEvent('MainPage_update_app_state');
        FFAppState().id = UsersGroup.meCall.id(
          (_model.usermeMain?.jsonBody ?? ''),
        )!;
        FFAppState().loginid = UsersGroup.meCall.loginid(
          (_model.usermeMain?.jsonBody ?? ''),
        )!;
        FFAppState().fullname = UsersGroup.meCall.fullname(
          (_model.usermeMain?.jsonBody ?? ''),
        )!;
        FFAppState().univid = UsersGroup.meCall.univid(
          (_model.usermeMain?.jsonBody ?? ''),
        )!;
        FFAppState().schoolemail = UsersGroup.meCall.schoolemail(
          (_model.usermeMain?.jsonBody ?? ''),
        )!;
        FFAppState().academicstatus = UsersGroup.meCall.academicstatus(
          (_model.usermeMain?.jsonBody ?? ''),
        )!;
        FFAppState().studentid = UsersGroup.meCall.studentid(
          (_model.usermeMain?.jsonBody ?? ''),
        )!;
        FFAppState().major = UsersGroup.meCall.major(
          (_model.usermeMain?.jsonBody ?? ''),
        )!;
        FFAppState().password = UsersGroup.meCall
            .password(
              (_model.usermeMain?.jsonBody ?? ''),
            )
            .toString();
        safeSetState(() {});
      }
      logFirebaseEvent('MainPage_backend_call');
      _model.boardList = await CommuniyUnivIDGroup.unividBoardsREADCall.call(
        accessToken: currentAuthenticationToken,
        univId: FFAppState().univid,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            title: Text(
              'Cambridge University',
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'Maruburi',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
            actions: [
              FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 40.0,
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
              FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 40.0,
                icon: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ],
            centerTitle: false,
            elevation: 2.0,
          ),
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'School Infomation',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'MAIN_PAGE_PAGE_Column_5ea811wi_ON_TAP');
                            logFirebaseEvent('Column_navigate_to');

                            context.pushNamed('Webviewex');
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://picsum.photos/seed/232/600',
                                  width: 40.0,
                                  height: 40.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                '학사정보',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'MAIN_PAGE_PAGE_Column_vi19abgs_ON_TAP');
                            logFirebaseEvent('Column_navigate_to');

                            context.pushNamed('Webviewex');
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://picsum.photos/seed/232/600',
                                  width: 40.0,
                                  height: 40.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                '학사정보',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'MAIN_PAGE_PAGE_Column_5ix1gzgs_ON_TAP');
                            logFirebaseEvent('Column_navigate_to');

                            context.pushNamed('Webviewex');
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://picsum.photos/seed/232/600',
                                  width: 40.0,
                                  height: 40.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                '학사정보',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'MAIN_PAGE_PAGE_Column_ucgvt33c_ON_TAP');
                            logFirebaseEvent('Column_navigate_to');

                            context.pushNamed('Webviewex');
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://picsum.photos/seed/232/600',
                                  width: 40.0,
                                  height: 40.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                '학사정보',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'MAIN_PAGE_PAGE_Column_m6zdh7ej_ON_TAP');
                            logFirebaseEvent('Column_navigate_to');

                            context.pushNamed('Webviewex');
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://picsum.photos/seed/232/600',
                                  width: 40.0,
                                  height: 40.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                '학사정보',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Favorite Board',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Outfit',
                                color: const Color(0xFF14181B),
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'MAIN_PAGE_PAGE_Text_icz927zr_ON_TAP');
                            logFirebaseEvent('Text_navigate_to');

                            context.pushNamed('viewBoardList');
                          },
                          child: Text(
                            'More >',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Builder(
                  builder: (context) {
                    if (((_model.boardList?.bodyText ?? '') == '{\"detail\":\"Could not validate credentials\"}') ||
                        ((_model.boardList?.bodyText ?? '') ==
                            '{\"error_code\":\"BAD_GATEWAY\",\"message\":\"You are not authorized to access this university\"}') ||
                        ((_model.boardList?.bodyText ?? '') ==
                            '{\"detail\":\"Not authenticated\"}')) {
                      return wrapWithModel(
                        model: _model.noAuthCMPModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const NoAuthCMPWidget(),
                      );
                    } else {
                      return Builder(
                        builder: (context) {
                          final board =
                              (_model.boardList?.jsonBody ?? '').toList();

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: board.length,
                            itemBuilder: (context, boardIndex) {
                              final boardItem = board[boardIndex];
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: Container(
                                  width: 100.0,
                                  height: 49.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            BoardListStruct.maybeFromMap(
                                                    boardItem)
                                                ?.name,
                                            'BoardName',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
