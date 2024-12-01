import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a_profile_widget.dart' show AProfileWidget;
import 'package:flutter/material.dart';

class AProfileModel extends FlutterFlowModel<AProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for Major widget.
  FocusNode? majorFocusNode;
  TextEditingController? majorTextController;
  String? Function(BuildContext, String?)? majorTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    majorFocusNode?.dispose();
    majorTextController?.dispose();
  }
}
