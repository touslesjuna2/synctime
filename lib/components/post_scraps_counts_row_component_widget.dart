import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'post_scraps_counts_row_component_model.dart';
export 'post_scraps_counts_row_component_model.dart';

class PostScrapsCountsRowComponentWidget extends StatefulWidget {
  const PostScrapsCountsRowComponentWidget({
    super.key,
    this.parameter1,
  });

  final String? parameter1;

  @override
  State<PostScrapsCountsRowComponentWidget> createState() =>
      _PostScrapsCountsRowComponentWidgetState();
}

class _PostScrapsCountsRowComponentWidgetState
    extends State<PostScrapsCountsRowComponentWidget> {
  late PostScrapsCountsRowComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostScrapsCountsRowComponentModel());

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
        Icon(
          Icons.bookmark_border,
          color: FlutterFlowTheme.of(context).warning,
          size: 20.0,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
          child: Text(
            valueOrDefault<String>(
              _model.postScrapsCountsInteger.toString(),
              '0',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Plus Jakarta Sans',
                  color: FlutterFlowTheme.of(context).warning,
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ],
    );
  }
}
