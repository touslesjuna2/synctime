import '/components/ads_banner_widget.dart';
import '/components/comments_count_row_component_widget.dart';
import '/components/likes_count_row_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_board_widget.dart' show ViewBoardWidget;
import 'package:flutter/material.dart';

class ViewBoardModel extends FlutterFlowModel<ViewBoardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ads_banner component.
  late AdsBannerModel adsBannerModel;
  // Model for LikesCountRowComponent component.
  late LikesCountRowComponentModel likesCountRowComponentModel;
  // Model for CommentsCountRowComponent component.
  late CommentsCountRowComponentModel commentsCountRowComponentModel;

  @override
  void initState(BuildContext context) {
    adsBannerModel = createModel(context, () => AdsBannerModel());
    likesCountRowComponentModel =
        createModel(context, () => LikesCountRowComponentModel());
    commentsCountRowComponentModel =
        createModel(context, () => CommentsCountRowComponentModel());
  }

  @override
  void dispose() {
    adsBannerModel.dispose();
    likesCountRowComponentModel.dispose();
    commentsCountRowComponentModel.dispose();
  }
}
