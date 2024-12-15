import '/components/ads_banner_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_board_widget.dart' show ViewBoardWidget;
import 'package:flutter/material.dart';

class ViewBoardModel extends FlutterFlowModel<ViewBoardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ads_banner component.
  late AdsBannerModel adsBannerModel;

  @override
  void initState(BuildContext context) {
    adsBannerModel = createModel(context, () => AdsBannerModel());
  }

  @override
  void dispose() {
    adsBannerModel.dispose();
  }
}
