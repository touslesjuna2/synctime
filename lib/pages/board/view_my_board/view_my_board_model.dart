import '/components/ads_banner_widget.dart';
import '/components/comments_count_row_component_widget.dart';
import '/components/likes_count_row_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_my_board_widget.dart' show ViewMyBoardWidget;
import 'package:flutter/material.dart';

class ViewMyBoardModel extends FlutterFlowModel<ViewMyBoardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ads_banner component.
  late AdsBannerModel adsBannerModel;
  // Models for LikesCountRowComponent dynamic component.
  late FlutterFlowDynamicModels<LikesCountRowComponentModel>
      likesCountRowComponentModels;
  // Models for CommentsCountRowComponent dynamic component.
  late FlutterFlowDynamicModels<CommentsCountRowComponentModel>
      commentsCountRowComponentModels;

  @override
  void initState(BuildContext context) {
    adsBannerModel = createModel(context, () => AdsBannerModel());
    likesCountRowComponentModels =
        FlutterFlowDynamicModels(() => LikesCountRowComponentModel());
    commentsCountRowComponentModels =
        FlutterFlowDynamicModels(() => CommentsCountRowComponentModel());
  }

  @override
  void dispose() {
    adsBannerModel.dispose();
    likesCountRowComponentModels.dispose();
    commentsCountRowComponentModels.dispose();
  }
}
