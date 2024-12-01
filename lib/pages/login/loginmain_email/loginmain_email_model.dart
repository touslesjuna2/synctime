import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loginmain_email_widget.dart' show LoginmainEmailWidget;
import 'package:flutter/material.dart';

class LoginmainEmailModel extends FlutterFlowModel<LoginmainEmailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ID widget.
  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  String? Function(BuildContext, String?)? idTextControllerValidator;
  // Stores action output result for [Backend Call - API (Register RequestLoginIDVerification)] action in Button widget.
  ApiCallResponse? verifyRequestID;
  // State field(s) for PW widget.
  FocusNode? pwFocusNode1;
  TextEditingController? pwTextController1;
  String? Function(BuildContext, String?)? pwTextController1Validator;
  // Stores action output result for [Backend Call - API (Verify Login ID)] action in Button widget.
  ApiCallResponse? verify;
  // State field(s) for PW widget.
  FocusNode? pwFocusNode2;
  TextEditingController? pwTextController2;
  late bool pwVisibility;
  String? Function(BuildContext, String?)? pwTextController2Validator;
  // State field(s) for PW_Check widget.
  FocusNode? pWCheckFocusNode;
  TextEditingController? pWCheckTextController;
  late bool pWCheckVisibility;
  String? Function(BuildContext, String?)? pWCheckTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Stores action output result for [Backend Call - API (Register)] action in Button widget.
  ApiCallResponse? register;

  @override
  void initState(BuildContext context) {
    pwVisibility = false;
    pWCheckVisibility = false;
  }

  @override
  void dispose() {
    idFocusNode?.dispose();
    idTextController?.dispose();

    pwFocusNode1?.dispose();
    pwTextController1?.dispose();

    pwFocusNode2?.dispose();
    pwTextController2?.dispose();

    pWCheckFocusNode?.dispose();
    pWCheckTextController?.dispose();
  }
}
