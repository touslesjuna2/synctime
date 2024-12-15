import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'department_settings_model.dart';
export 'department_settings_model.dart';

class DepartmentSettingsWidget extends StatefulWidget {
  const DepartmentSettingsWidget({super.key});

  @override
  State<DepartmentSettingsWidget> createState() =>
      _DepartmentSettingsWidgetState();
}

class _DepartmentSettingsWidgetState extends State<DepartmentSettingsWidget> {
  late DepartmentSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DepartmentSettingsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Department_settings'});
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
              buttonSize: 24.0,
              icon: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                logFirebaseEvent('DEPARTMENT_SETTINGS_arrow_back_ICN_ON_TA');
                logFirebaseEvent('IconButton_navigate_to');

                context.pushNamed('Settings');
              },
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(-0.3, 0.0),
            child: Text(
              'Department settings',
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
        body: const SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }
}
