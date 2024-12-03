import '/flutter_flow/flutter_flow_util.dart';
import 'create_board_widget.dart' show CreateBoardWidget;
import 'package:flutter/material.dart';

class CreateBoardModel extends FlutterFlowModel<CreateBoardWidget> {
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
  // State field(s) for AllowAnonymSwitch widget.
  bool? allowAnonymSwitchValue1;
  // State field(s) for AllowAnonymSwitch widget.
  bool? allowAnonymSwitchValue2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleTextFieldFocusNode?.dispose();
    titleTextFieldTextController?.dispose();

    contentTextFieldFocusNode?.dispose();
    contentTextFieldTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();
  }
}
