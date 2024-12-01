import '/components/anonym_check_box_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'anonym_check_box_container_widget.dart'
    show AnonymCheckBoxContainerWidget;
import 'package:flutter/material.dart';

class AnonymCheckBoxContainerModel
    extends FlutterFlowModel<AnonymCheckBoxContainerWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for AnonymCheckBoxRow component.
  late AnonymCheckBoxRowModel anonymCheckBoxRowModel;

  @override
  void initState(BuildContext context) {
    anonymCheckBoxRowModel =
        createModel(context, () => AnonymCheckBoxRowModel());
  }

  @override
  void dispose() {
    anonymCheckBoxRowModel.dispose();
  }
}
