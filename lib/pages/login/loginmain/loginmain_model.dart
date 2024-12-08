import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loginmain_widget.dart' show LoginmainWidget;
import 'package:flutter/material.dart';

class LoginmainModel extends FlutterFlowModel<LoginmainWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Google Token)] action in Loginmain widget.
  ApiCallResponse? tokentoken;
  // State field(s) for ID widget.
  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  String? Function(BuildContext, String?)? idTextControllerValidator;
  // Stores action output result for [Backend Call - API (Register Check Login ID)] action in ID widget.
  ApiCallResponse? iDCheck;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Backend Call - API (Token)] action in Button widget.
  ApiCallResponse? token;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    idFocusNode?.dispose();
    idTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
