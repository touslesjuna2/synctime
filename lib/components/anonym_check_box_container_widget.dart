import '/components/anonym_check_box_row_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'anonym_check_box_container_model.dart';
export 'anonym_check_box_container_model.dart';

class AnonymCheckBoxContainerWidget extends StatefulWidget {
  const AnonymCheckBoxContainerWidget({super.key});

  @override
  State<AnonymCheckBoxContainerWidget> createState() =>
      _AnonymCheckBoxContainerWidgetState();
}

class _AnonymCheckBoxContainerWidgetState
    extends State<AnonymCheckBoxContainerWidget> {
  late AnonymCheckBoxContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnonymCheckBoxContainerModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: wrapWithModel(
        model: _model.anonymCheckBoxRowModel,
        updateCallback: () => safeSetState(() {}),
        child: const AnonymCheckBoxRowWidget(),
      ),
    );
  }
}
