import '/components/anonym_check_box_container_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_post_widget.dart' show CreatePostWidget;
import 'package:flutter/material.dart';

class CreatePostModel extends FlutterFlowModel<CreatePostWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TitleTextField widget.
  FocusNode? titleTextFieldFocusNode;
  TextEditingController? titleTextFieldTextController;
  String? Function(BuildContext, String?)?
      titleTextFieldTextControllerValidator;
  // State field(s) for ContentTextField widget.
  FocusNode? contentTextFieldFocusNode;
  TextEditingController? contentTextFieldTextController;
  String? Function(BuildContext, String?)?
      contentTextFieldTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for AnonymCheckBoxContainer component.
  late AnonymCheckBoxContainerModel anonymCheckBoxContainerModel;

  @override
  void initState(BuildContext context) {
    anonymCheckBoxContainerModel =
        createModel(context, () => AnonymCheckBoxContainerModel());
  }

  @override
  void dispose() {
    titleTextFieldFocusNode?.dispose();
    titleTextFieldTextController?.dispose();

    contentTextFieldFocusNode?.dispose();
    contentTextFieldTextController?.dispose();

    anonymCheckBoxContainerModel.dispose();
  }
}