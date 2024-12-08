import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'alert_general_c_m_p_model.dart';
export 'alert_general_c_m_p_model.dart';

class AlertGeneralCMPWidget extends StatefulWidget {
  const AlertGeneralCMPWidget({
    super.key,
    String? alertmessage,
  }) : alertmessage = alertmessage ?? '알림메시지';

  final String alertmessage;

  @override
  State<AlertGeneralCMPWidget> createState() => _AlertGeneralCMPWidgetState();
}

class _AlertGeneralCMPWidgetState extends State<AlertGeneralCMPWidget> {
  late AlertGeneralCMPModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlertGeneralCMPModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: const Color(0xFFE5E7EB),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'c6btr8tm' /* Notification  */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Figtree',
                          color: const Color(0xFF15161E),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Text(
                    widget.alertmessage,
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Figtree',
                          color: const Color(0xFF606A85),
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ].divide(const SizedBox(height: 4.0)),
              ),
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              hoverColor: const Color(0xFFF1F4F8),
              icon: const Icon(
                Icons.close_rounded,
                color: Color(0xFF606A85),
                size: 24.0,
              ),
              onPressed: () async {
                logFirebaseEvent('ALERT_GENERAL_C_M_P_close_rounded_ICN_ON');
                logFirebaseEvent('IconButton_navigate_back');
                context.safePop();
              },
            ),
          ].divide(const SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}
