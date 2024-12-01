import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'comments_count_component_model.dart';
export 'comments_count_component_model.dart';

class CommentsCountComponentWidget extends StatefulWidget {
  const CommentsCountComponentWidget({super.key});

  @override
  State<CommentsCountComponentWidget> createState() =>
      _CommentsCountComponentWidgetState();
}

class _CommentsCountComponentWidgetState
    extends State<CommentsCountComponentWidget> {
  late CommentsCountComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommentsCountComponentModel());

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
        FaIcon(
          FontAwesomeIcons.comment,
          color: FlutterFlowTheme.of(context).secondary,
          size: 16.0,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
          child: Text(
            FFLocalizations.of(context).getText(
              '2p8mvqnh' /* 3 */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Plus Jakarta Sans',
                  color: FlutterFlowTheme.of(context).secondary,
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ],
    );
  }
}
