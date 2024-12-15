import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'youth_protection_policy_model.dart';
export 'youth_protection_policy_model.dart';

class YouthProtectionPolicyWidget extends StatefulWidget {
  const YouthProtectionPolicyWidget({super.key});

  @override
  State<YouthProtectionPolicyWidget> createState() =>
      _YouthProtectionPolicyWidgetState();
}

class _YouthProtectionPolicyWidgetState
    extends State<YouthProtectionPolicyWidget> {
  late YouthProtectionPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => YouthProtectionPolicyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Youth_protection_policy'});
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
                logFirebaseEvent('YOUTH_PROTECTION_POLICY_arrow_back_ICN_O');
                logFirebaseEvent('IconButton_navigate_to');

                context.pushNamed('Settings');
              },
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(-0.3, 0.0),
            child: Text(
              'Youth protection policy',
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
                'Youth Protection Policy\n\nOur company, Bizlum Co., Ltd. (\"the Company\"), aims to protect adolescents by preventing harmful information and creating a safe online environment based on the \"Act on Promotion of Information and Communications Network Utilization and Information Protection.\"\nPurpose and Basic Principles for Youth Protection\n\nThe Company strives to provide services in a safe environment where adolescents can grow in a healthy and well-rounded way.\nAccess Restriction and Control of Harmful Information\n\nThe Company prevents minors from being exposed to harmful information by monitoring posts and systems. Any harmful posts are reported to the support center. Additionally, we block and restrict obscene and violent content in accordance with our community guidelines.\nEducation for Youth Protection\n\nThe Company provides education for relevant personnel on legal regulations, youth protection policies, detection and handling methods of harmful information, and reporting procedures.\nCounseling and Grievance Handling for Harmful Information\n\nThe Company offers counseling and guidance to minimize damage caused by harmful information. Users can contact the youth protection officer or dedicated support team for assistance.\n',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Roboto',
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
