import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'loginmain_model.dart';
export 'loginmain_model.dart';

class LoginmainWidget extends StatefulWidget {
  const LoginmainWidget({
    super.key,
    this.code,
  });

  final int? code;

  @override
  State<LoginmainWidget> createState() => _LoginmainWidgetState();
}

class _LoginmainWidgetState extends State<LoginmainWidget> {
  late LoginmainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginmainModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Loginmain'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('LOGINMAIN_PAGE_Loginmain_ON_INIT_STATE');
      Function() navigate = () {};
      if (widget.code != null) {
        logFirebaseEvent('Loginmain_backend_call');
        _model.googlecode = await AuthGroup.googleTokenCall.call(
          code: widget.code,
        );

        if ((_model.googlecode?.succeeded ?? true)) {
          logFirebaseEvent('Loginmain_auth');
          GoRouter.of(context).prepareAuthEvent();
          await authManager.signIn(
            authenticationToken: AuthGroup.googleTokenCall
                .accesstoken(
                  (_model.googlecode?.jsonBody ?? ''),
                )
                .toString(),
            refreshToken: AuthGroup.googleTokenCall
                .refreshtoken(
                  (_model.googlecode?.jsonBody ?? ''),
                )
                .toString(),
          );
          navigate = () => context.goNamedAuth('MainPage', context.mounted);
        }
      }

      navigate();
    });

    _model.idTextController ??= TextEditingController();
    _model.idFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

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

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'u5w90d4w' /* Sync */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 24.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'rif7vlcc' /* Hi */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'LOGINMAIN_CONTINUE_WITH_GOOGLE_BTN_ON_TA');
                        logFirebaseEvent('Button_launch_u_r_l');
                        await launchURL(
                            'http://ec2-18-191-211-86.us-east-2.compute.amazonaws.com/auth/google/login');
                      },
                      text: FFLocalizations.of(context).getText(
                        '1utnquo1' /* Continue with Google */,
                      ),
                      icon: const FaIcon(
                        FontAwesomeIcons.google,
                        size: 20.0,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 44.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                        hoverColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 24.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'stny9e1i' /* Or  */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Outfit',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.idTextController,
                        focusNode: _model.idFocusNode,
                        onFieldSubmitted: (_) async {
                          logFirebaseEvent(
                              'LOGINMAIN_PAGE_ID_ON_TEXTFIELD_SUBMIT');
                          logFirebaseEvent('ID_backend_call');
                          _model.iDCheck =
                              await AuthGroup.registerCheckLoginIDCall.call(
                            loginId: _model.idTextController.text,
                          );

                          if (AuthGroup.registerCheckLoginIDCall.duplicated(
                                (_model.iDCheck?.jsonBody ?? ''),
                              ) ==
                              false) {
                            logFirebaseEvent('ID_navigate_to');

                            context.pushNamed('Loginmain_Email');
                          }

                          safeSetState(() {});
                        },
                        autofocus: true,
                        autofillHints: const [AutofillHints.email],
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            'vxqgrind' /* Email */,
                          ),
                          labelStyle:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Plus Jakarta Sans',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: FlutterFlowTheme.of(context).primary,
                        validator: _model.idTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  if (/* NOT RECOMMENDED */ _model
                          .passwordTextController.text ==
                      'true')
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: AuthGroup.registerCheckUsernameCall.call(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          final buttonRegisterCheckUsernameResponse =
                              snapshot.data!;

                          return FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: FFLocalizations.of(context).getText(
                              'e1w1nrij' /* Continue with ID */,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 44.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          );
                        },
                      ),
                    ),
                  if ((_model.idTextController.text != '') &&
                      (AuthGroup.registerCheckLoginIDCall.duplicated(
                            (_model.iDCheck?.jsonBody ?? ''),
                          ) ==
                          true))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.passwordTextController,
                          focusNode: _model.passwordFocusNode,
                          autofocus: true,
                          autofillHints: const [AutofillHints.password],
                          obscureText: !_model.passwordVisibility,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'h3x2vula' /* Password */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            suffixIcon: InkWell(
                              onTap: () => safeSetState(
                                () => _model.passwordVisibility =
                                    !_model.passwordVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                _model.passwordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.passwordTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  if (_model.passwordTextController.text != '')
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('LOGINMAIN_PAGE_START_BTN_ON_TAP');
                          var shouldSetState = false;
                          logFirebaseEvent('Button_backend_call');
                          _model.token = await AuthGroup.tokenCall.call(
                            username: _model.idTextController.text,
                            password: _model.passwordTextController.text,
                          );

                          shouldSetState = true;
                          if ((_model.token?.succeeded ?? true)) {
                            logFirebaseEvent('Button_update_app_state');
                            FFAppState().accesstoken =
                                AuthGroup.tokenCall.access(
                              (_model.token?.jsonBody ?? ''),
                            )!;
                            FFAppState().refreshtoken =
                                AuthGroup.tokenCall.refresh(
                              (_model.token?.jsonBody ?? ''),
                            )!;
                            safeSetState(() {});
                            logFirebaseEvent('Button_backend_call');
                            _model.userme = await UsersGroup.meCall.call(
                              accessToken: FFAppState().accesstoken,
                            );

                            shouldSetState = true;
                            if ((_model.userme?.succeeded ?? true)) {
                              logFirebaseEvent('Button_update_app_state');
                              FFAppState().id = UserMeStruct.maybeFromMap(
                                      (_model.userme?.jsonBody ?? ''))!
                                  .id;
                              FFAppState().loginid = UserMeStruct.maybeFromMap(
                                      (_model.userme?.jsonBody ?? ''))!
                                  .loginId;
                              FFAppState().fullname = UserMeStruct.maybeFromMap(
                                      (_model.userme?.jsonBody ?? ''))!
                                  .fullName;
                              FFAppState().univid = UserMeStruct.maybeFromMap(
                                      (_model.userme?.jsonBody ?? ''))!
                                  .univId;
                              FFAppState().schoolemail =
                                  UserMeStruct.maybeFromMap(
                                          (_model.userme?.jsonBody ?? ''))!
                                      .schoolEmail
                                      .toString();
                              FFAppState().academicstatus =
                                  UserMeStruct.maybeFromMap(
                                          (_model.userme?.jsonBody ?? ''))!
                                      .academicStatus;
                              FFAppState().studentid =
                                  UserMeStruct.maybeFromMap(
                                          (_model.userme?.jsonBody ?? ''))!
                                      .studentId;
                              FFAppState().major = UserMeStruct.maybeFromMap(
                                      (_model.userme?.jsonBody ?? ''))!
                                  .studentId;
                              FFAppState().password = UserMeStruct.maybeFromMap(
                                      (_model.userme?.jsonBody ?? ''))!
                                  .password;
                              safeSetState(() {});
                            } else {
                              if (shouldSetState) safeSetState(() {});
                              return;
                            }

                            logFirebaseEvent('Button_auth');
                            GoRouter.of(context).prepareAuthEvent();
                            await authManager.signIn(
                              authenticationToken: AuthGroup.tokenCall.access(
                                (_model.token?.jsonBody ?? ''),
                              ),
                              refreshToken: AuthGroup.tokenCall.refresh(
                                (_model.token?.jsonBody ?? ''),
                              ),
                            );
                          } else {
                            if (shouldSetState) safeSetState(() {});
                            return;
                          }

                          context.goNamedAuth('MainPage', context.mounted);

                          if (shouldSetState) safeSetState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          '6k14ivm5' /* Start */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 44.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryText,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: FlutterFlowTheme.of(context).alternate,
                                letterSpacing: 0.0,
                              ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                          hoverColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
