import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b1_email_school_widget.dart' show B1EmailSchoolWidget;
import 'package:flutter/material.dart';

class B1EmailSchoolModel extends FlutterFlowModel<B1EmailSchoolWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode1;
  TextEditingController? emailAddressTextController1;
  String? Function(BuildContext, String?)? emailAddressTextController1Validator;
  // Stores action output result for [Backend Call - API (Request School Email Verification)] action in IconButton widget.
  ApiCallResponse? requestSchool;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode2;
  TextEditingController? emailAddressTextController2;
  String? Function(BuildContext, String?)? emailAddressTextController2Validator;
  // Stores action output result for [Backend Call - API (Verify School Email)] action in Button widget.
  ApiCallResponse? verifyCode;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode1?.dispose();
    emailAddressTextController1?.dispose();

    emailAddressFocusNode2?.dispose();
    emailAddressTextController2?.dispose();
  }
}
