import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'alert_check_c_m_p_model.dart';
export 'alert_check_c_m_p_model.dart';

class AlertCheckCMPWidget extends StatefulWidget {
  const AlertCheckCMPWidget({super.key});

  @override
  State<AlertCheckCMPWidget> createState() => _AlertCheckCMPWidgetState();
}

class _AlertCheckCMPWidgetState extends State<AlertCheckCMPWidget> {
  late AlertCheckCMPModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlertCheckCMPModel());

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
        color: const Color(0xFF048178),
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
          color: const Color(0x9AFFFFFF),
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.add_task_rounded,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                      Text(
                        'Notification Title',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Figtree',
                              color: Colors.white,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                  Text(
                    'Some body copy that is present in this small notification.',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Figtree',
                          color: const Color(0x9AFFFFFF),
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
                color: Colors.white,
                size: 24.0,
              ),
              onPressed: () async {
                logFirebaseEvent('ALERT_CHECK_C_M_P_close_rounded_ICN_ON_T');
                logFirebaseEvent('IconButton_close_dialog_drawer_etc');
                Navigator.pop(context);
              },
            ),
          ].divide(const SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}
