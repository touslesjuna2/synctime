import '/components/ads_banner_widget.dart';
import '/components/anonym_check_box_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_post_widget.dart' show ViewPostWidget;
import 'package:flutter/material.dart';

class ViewPostModel extends FlutterFlowModel<ViewPostWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ads_banner component.
  late AdsBannerModel adsBannerModel;
  // State field(s) for SubscribeSwitch widget.
  bool? subscribeSwitchValue;
  // Model for AnonymCheckBoxRow component.
  late AnonymCheckBoxRowModel anonymCheckBoxRowModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    adsBannerModel = createModel(context, () => AdsBannerModel());
    anonymCheckBoxRowModel =
        createModel(context, () => AnonymCheckBoxRowModel());
  }

  @override
  void dispose() {
    adsBannerModel.dispose();
    anonymCheckBoxRowModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
