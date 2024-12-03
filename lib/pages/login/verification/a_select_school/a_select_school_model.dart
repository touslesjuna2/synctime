import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a_select_school_widget.dart' show ASelectSchoolWidget;
import 'package:flutter/material.dart';

class ASelectSchoolModel extends FlutterFlowModel<ASelectSchoolWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Univs)] action in a_Select_School widget.
  ApiCallResponse? getUnivs;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
