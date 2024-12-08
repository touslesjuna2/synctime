import '/backend/api_requests/api_calls.dart';
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
  FocusNode? contentTextFieldFocusNode1;
  TextEditingController? contentTextFieldTextController1;
  String? Function(BuildContext, String?)?
      contentTextFieldTextController1Validator;
  // State field(s) for ContentTextField widget.
  FocusNode? contentTextFieldFocusNode2;
  TextEditingController? contentTextFieldTextController2;
  String? Function(BuildContext, String?)?
      contentTextFieldTextController2Validator;
  // State field(s) for ContentTextField widget.
  FocusNode? contentTextFieldFocusNode3;
  TextEditingController? contentTextFieldTextController3;
  String? Function(BuildContext, String?)?
      contentTextFieldTextController3Validator;
  // State field(s) for anonym widget.
  bool? anonymValue;
  // State field(s) for qna widget.
  bool? qnaValue;
  // Stores action output result for [Backend Call - API (univid Boards CREATE)] action in Icon widget.
  ApiCallResponse? univBoardCREATE;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleTextFieldFocusNode?.dispose();
    titleTextFieldTextController?.dispose();

    contentTextFieldFocusNode1?.dispose();
    contentTextFieldTextController1?.dispose();

    contentTextFieldFocusNode2?.dispose();
    contentTextFieldTextController2?.dispose();

    contentTextFieldFocusNode3?.dispose();
    contentTextFieldTextController3?.dispose();
  }
}
