import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'comments_count_row_component_model.dart';
export 'comments_count_row_component_model.dart';

class CommentsCountRowComponentWidget extends StatefulWidget {
  const CommentsCountRowComponentWidget({
    super.key,
    int? commentsCountsInteger,
  }) : commentsCountsInteger = commentsCountsInteger ?? 0;

  final int commentsCountsInteger;

  @override
  State<CommentsCountRowComponentWidget> createState() =>
      _CommentsCountRowComponentWidgetState();
}

class _CommentsCountRowComponentWidgetState
    extends State<CommentsCountRowComponentWidget> {
  late CommentsCountRowComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommentsCountRowComponentModel());

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
            valueOrDefault<String>(
              _model.postCommentsCountsInteger.toString(),
              '0',
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
