import '/flutter_flow/flutter_flow_util.dart';
import 'timetable_settings_change_name_c_m_p_widget.dart'
    show TimetableSettingsChangeNameCMPWidget;
import 'package:flutter/material.dart';

class TimetableSettingsChangeNameCMPModel
    extends FlutterFlowModel<TimetableSettingsChangeNameCMPWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
