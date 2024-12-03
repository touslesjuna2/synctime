import '/flutter_flow/flutter_flow_util.dart';
import 'search_board_widget.dart' show SearchBoardWidget;
import 'package:flutter/material.dart';

class SearchBoardModel extends FlutterFlowModel<SearchBoardWidget> {
  ///  Local state fields for this page.

  bool isAlreadySearchedSomething = false;

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
