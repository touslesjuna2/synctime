import '/flutter_flow/flutter_flow_util.dart';
import 'change_nickname_widget.dart' show ChangeNicknameWidget;
import 'package:flutter/material.dart';

class ChangeNicknameModel extends FlutterFlowModel<ChangeNicknameWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
