import '/components/no_auth_c_m_p/no_auth_c_m_p_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_page_widget.dart' show MainPageWidget;
import 'package:flutter/material.dart';

class MainPageModel extends FlutterFlowModel<MainPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NoAuth_CMP component.
  late NoAuthCMPModel noAuthCMPModel;

  @override
  void initState(BuildContext context) {
    noAuthCMPModel = createModel(context, () => NoAuthCMPModel());
  }

  @override
  void dispose() {
    noAuthCMPModel.dispose();
  }
}
