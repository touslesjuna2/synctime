import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'likes_count_component_model.dart';
export 'likes_count_component_model.dart';

class LikesCountComponentWidget extends StatefulWidget {
  const LikesCountComponentWidget({super.key});

  @override
  State<LikesCountComponentWidget> createState() =>
      _LikesCountComponentWidgetState();
}

class _LikesCountComponentWidgetState extends State<LikesCountComponentWidget> {
  late LikesCountComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LikesCountComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        const FaIcon(
          FontAwesomeIcons.solidThumbsUp,
          color: Color(0xFFB82D37),
          size: 16.0,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
          child: Text(
            FFLocalizations.of(context).getText(
              'g3w78wog' /* 11 */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Plus Jakarta Sans',
                  color: FlutterFlowTheme.of(context).accent3,
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ],
    );
  }
}
