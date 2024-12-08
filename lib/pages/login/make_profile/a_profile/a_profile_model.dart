import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a_profile_widget.dart' show AProfileWidget;
import 'package:flutter/material.dart';

class AProfileModel extends FlutterFlowModel<AProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Username widget.
  FocusNode? usernameFocusNode1;
  TextEditingController? usernameTextController1;
  String? Function(BuildContext, String?)? usernameTextController1Validator;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode2;
  TextEditingController? usernameTextController2;
  String? Function(BuildContext, String?)? usernameTextController2Validator;
  // State field(s) for Major widget.
  FocusNode? majorFocusNode;
  TextEditingController? majorTextController;
  String? Function(BuildContext, String?)? majorTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (me UPDATE)] action in Button widget.
  ApiCallResponse? profile;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usernameFocusNode1?.dispose();
    usernameTextController1?.dispose();

    usernameFocusNode2?.dispose();
    usernameTextController2?.dispose();

    majorFocusNode?.dispose();
    majorTextController?.dispose();
  }
}
