import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'restriction_history_model.dart';
export 'restriction_history_model.dart';

class RestrictionHistoryWidget extends StatefulWidget {
  const RestrictionHistoryWidget({super.key});

  @override
  State<RestrictionHistoryWidget> createState() =>
      _RestrictionHistoryWidgetState();
}

class _RestrictionHistoryWidgetState extends State<RestrictionHistoryWidget> {
  late RestrictionHistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RestrictionHistoryModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Restriction_history'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
          leading: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 5.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 6.0,
              buttonSize: 16.0,
              icon: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                logFirebaseEvent('RESTRICTION_HISTORY_arrow_back_ICN_ON_TA');
                logFirebaseEvent('IconButton_navigate_to');

                context.pushNamed('Settings');
              },
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(-0.3, 0.0),
            child: Text(
              'Restriction history',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Maruburi',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '(쿼리로 잡아야함)',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Roboto',
                      fontSize: 40.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
