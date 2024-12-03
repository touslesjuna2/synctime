import '/components/ads_banner_widget.dart';
import '/components/likes_count_row_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_board_widget.dart' show ViewBoardWidget;
import 'package:flutter/material.dart';

class ViewBoardModel extends FlutterFlowModel<ViewBoardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ads_banner component.
  late AdsBannerModel adsBannerModel;
  // Models for LikesCountRowComponent dynamic component.
  late FlutterFlowDynamicModels<LikesCountRowComponentModel>
      likesCountRowComponentModels;

  @override
  void initState(BuildContext context) {
    adsBannerModel = createModel(context, () => AdsBannerModel());
    likesCountRowComponentModels =
        FlutterFlowDynamicModels(() => LikesCountRowComponentModel());
  }

  @override
  void dispose() {
    adsBannerModel.dispose();
    likesCountRowComponentModels.dispose();
  }
}
