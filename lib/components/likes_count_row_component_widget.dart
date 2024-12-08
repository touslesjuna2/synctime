import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'likes_count_row_component_model.dart';
export 'likes_count_row_component_model.dart';

class LikesCountRowComponentWidget extends StatefulWidget {
  const LikesCountRowComponentWidget({
    super.key,
    int? likeCountsInteger,
  }) : likeCountsInteger = likeCountsInteger ?? 0;

  final int likeCountsInteger;

  @override
  State<LikesCountRowComponentWidget> createState() =>
      _LikesCountRowComponentWidgetState();
}

class _LikesCountRowComponentWidgetState
    extends State<LikesCountRowComponentWidget> {
  late LikesCountRowComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LikesCountRowComponentModel());

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
          FontAwesomeIcons.thumbsUp,
          color: Color(0xFFB82D37),
          size: 16.0,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
          child: Text(
            valueOrDefault<String>(
              _model.postLikesCountsIntger.toString(),
              '0',
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
